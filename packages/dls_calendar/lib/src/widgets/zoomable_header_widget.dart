import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:dls_calendar/src/controller/zoom_controller.dart';
import 'package:dls_calendar/src/styles/day_view.dart';
import 'package:dls_calendar/src/styles/drag_and_drop.dart';
import 'package:dls_calendar/src/styles/hours_column.dart';
import 'package:dls_calendar/src/styles/resize_event.dart';
import 'package:dls_calendar/src/styles/zoomable_header_widget.dart';
import 'package:dls_calendar/src/utils/builders.dart';
import 'package:dls_calendar/src/utils/hour_minute.dart';

/// Allows to calculate a top offset from a given hour.
typedef TopOffsetCalculator = double Function(HourMinute time);

/// Triggered when the hours column has been tapped down.
typedef HoursColumnTapCallback = Function(HourMinute time);

/// Triggered when the day bar has been tapped down.
typedef DayBarTapCallback = Function(DateTime date);

/// Triggered when there's a click on the background (an empty region of the calendar). The returned
/// value corresponds to the hour/minute where the user made the tap. For better user experience,
/// you may want to round this value using [roundTimeToFitGrid].
typedef BackgroundTapCallback = Function(DateTime date);

typedef BackgroundHoverCallback = Function(DateTime date);

/// Allows to build the current time indicator (rule and circle).
typedef CurrentTimeDayIndicatorBuilder = Widget? Function(
    DayViewStyle dayViewStyle,
    TopOffsetCalculator topOffsetCalculator,
    double hoursColumnWidth,
    bool isRtl);

/// Allows to build the current time indicator (rule and circle).
typedef CurrentWeekTimeIndicatorBuilder = Widget? Function(
    DayViewStyle dayViewStyle,
    TopOffsetCalculator topOffsetCalculator,
    double hoursColumnWidth,
    bool isRtl);

/// Allows to build the time displayed on the side border.
typedef HoursColumnTimeBuilder = Widget? Function(
    HoursColumnStyle dayViewStyle, HourMinute time);

/// Allows to build the background decoration below single time displayed on the side border.
typedef HoursColumnBackgroundBuilder = Decoration? Function(HourMinute time);

/// A widget which is showing both headers and can be zoomed.
abstract class ZoomableHeadersWidget<S extends ZoomableHeaderWidgetStyle,
    C extends ZoomController> extends StatefulWidget {
  /// The widget style.
  final S style;

  /// The hours column style.
  final HoursColumnStyle hoursColumnStyle;

  /// Whether the widget should automatically be placed in a scrollable widget.
  final bool inScrollableWidget;


  /// The minimum time to display.
  final HourMinute minimumTime;

  /// The maximum time to display.
  final HourMinute maximumTime;

  /// The initial visible time. Defaults to the current hour of the day (if possible).
  final DateTime initialTime;

  /// Whether the user is able to pinch-to-zoom the widget.
  final bool userZoomable;

  /// The current time indicator builder only for DayView
  final CurrentTimeDayIndicatorBuilder? currentDayViewTimeIndicatorBuilder;

  /// Building method for building the time displayed on the side border.
  final HoursColumnTimeBuilder? hoursColumnTimeBuilder;

  /// Building method for building background decoration below single time displayed on the side border.
  final HoursColumnBackgroundBuilder? hoursColumnBackgroundBuilder;

  /// Triggered when the hours column has been tapped down.
  final HoursColumnTapCallback? onHoursColumnTappedDown;

  /// Triggered when the day bar has been tapped down.
  final DayBarTapCallback? onDayBarTappedDown;

  /// Triggered when there's a click on the background (an empty region of the calendar). The returned
  /// value corresponds to the hour/minute where the user made the tap. For better user experience,
  /// you may want to round this value using [roundTimeToFitGrid].
  final BackgroundTapCallback? onBackgroundTappedDown;

  final BackgroundHoverCallback? onBackgroundHover;

  final VoidCallback? onBackgroundHoverStop;

  /// Configures the behavior for drag-and-drop of events. If this is null (which
  /// is the default), drag-and-drop is disabled.
  final DragAndDropOptions? dragAndDropOptions;

  /// Configures the behavior for resizing events. When resizing is enabled, users
  /// can drag the end of events to increase/decrease their duration. If this is null
  /// (which is the default), resizing is disabled.
  final ResizeEventOptions? resizeEventOptions;

  /// The current day view controller.
  final C controller;

  /// Whether the widget should be aligned from right to left.
  final bool isRTL;

  /// Creates a new zoomable headers widget instance.
  const ZoomableHeadersWidget({
    super.key,
    required this.style,
    required this.hoursColumnStyle,
    this.inScrollableWidget = true,
    this.minimumTime = HourMinute.min,
    this.maximumTime = HourMinute.max,
    required this.initialTime,
    this.userZoomable = true,
    this.currentDayViewTimeIndicatorBuilder =
        DefaultBuilders.defaultCurrentTimeIndicatorBuilder,

    this.onHoursColumnTappedDown,
    this.onDayBarTappedDown,
    this.onBackgroundTappedDown,
    this.dragAndDropOptions,
    this.resizeEventOptions,
    required this.controller,
    this.hoursColumnTimeBuilder = DefaultBuilders.defaultHoursColumnTimeBuilder,
    this.hoursColumnBackgroundBuilder,
    this.isRTL = false,
    this.onBackgroundHover,
    this.onBackgroundHoverStop,
  });
}

/// An abstract widget state that shows both headers and can be zoomed.
abstract class ZoomableHeadersWidgetState<W extends ZoomableHeadersWidget>
    extends State<W> with ZoomControllerListener {
  /// The current hour row height.
  late double hourRowHeight;

  /// The vertical scroll controller.
  ScrollController? verticalScrollController;

  @override
  void initState() {
    super.initState();
    hourRowHeight = _calculateHourRowHeight();
    widget.controller.addListener(this);

    if (widget.inScrollableWidget) {
      verticalScrollController = ScrollController();
    }
  }

  @override
  void didUpdateWidget(W oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.controller.zoomFactor != oldWidget.controller.zoomFactor) {
      widget.controller
          .changeZoomFactor(oldWidget.controller.zoomFactor, notify: false);
    }

    hourRowHeight = _calculateHourRowHeight();
    oldWidget.controller.removeListener(this);
    widget.controller.addListener(this);
  }

  @override
  void onZoomStart(ZoomController controller, ScaleStartDetails details) {
    /// store current scroll position (vertical) and pinch focal point position (vertical) for future use in onZoomFactorChanged()
    if (verticalScrollController != null) {
      controller.contentOffset =
          (verticalScrollController!.offset + details.localFocalPoint.dy) /
              controller.zoomFactor;
    }
  }

  @override
  void onZoomFactorChanged(
      ZoomController controller, ScaleUpdateDetails details) {
    if (!mounted) {
      return;
    }

    double hourRowHeight = _calculateHourRowHeight(controller);
    double widgetHeight = (context.findRenderObject() as RenderBox).size.height;
    double maxPixels =
        calculateHeight(hourRowHeight) - widgetHeight + widget.style.headerSize;

    if (verticalScrollController != null) {
      verticalScrollController!.jumpTo(math.min(
          maxPixels,
          controller.contentOffset * controller.zoomFactor -
              details.localFocalPoint.dy));
    }

    setState(() {
      this.hourRowHeight = hourRowHeight;
    });
  }

  @override
  void dispose() {
    widget.controller.dispose();
    verticalScrollController?.dispose();
    super.dispose();
  }

  /// Returns the current day view style.
  DayViewStyle get currentDayViewStyle;

  /// Schedules a scroll to the default hour.
  void scheduleScrollToInitialTime() {
    if (shouldScrollToInitialTime) {
      WidgetsBinding.instance
          .addPostFrameCallback((_) => scrollToInitialTime());
    }
  }

  /// Checks whether the widget should scroll to current time.
  bool get shouldScrollToInitialTime =>
      widget.minimumTime
          .atDate(widget.initialTime)
          .isBefore(widget.initialTime) &&
      widget.maximumTime.atDate(widget.initialTime).isAfter(widget.initialTime);

  /// Scrolls to the initial time.
  void scrollToInitialTime() {
    if (mounted &&
        verticalScrollController != null &&
        verticalScrollController!.hasClients) {
      double topOffset = calculateTopOffset(
          HourMinute.fromDateTime(dateTime: widget.initialTime));
      verticalScrollController!.jumpTo(math.min(
          topOffset, verticalScrollController!.position.maxScrollExtent));
    }
  }

  /// Returns whether this widget should be zoomable.
  bool get isZoomable =>
      widget.userZoomable && widget.controller.zoomCoefficient > 0;

  /// Calculates the top offset of a given time.
  double calculateTopOffset(HourMinute time,
          {HourMinute? minimumTime, double? hourRowHeight}) =>
      DefaultBuilders.defaultTopOffsetCalculator(time,
          minimumTime: minimumTime ?? widget.minimumTime,
          hourRowHeight: hourRowHeight ?? this.hourRowHeight);

  /// Given a local position in the widget, calculates its corresponding
  /// HourMinute.
  HourMinute calculateOffsetHourMinute(Offset localOffset) {
    double hourRowHeight =
        calculateTopOffset(widget.minimumTime.add(const HourMinute(hour: 1)));
    double hourMinutesInHour = localOffset.dy / hourRowHeight;

    // Handle an edge case, since HourMinute doesn't support negative values.
    if (hourMinutesInHour < 0) {
      return widget.minimumTime;
    }

    int hour = hourMinutesInHour.floor();
    int minute = ((hourMinutesInHour - hour) * 60).round();
    return widget.minimumTime.add(HourMinute(hour: hour, minute: minute));
  }

  /// Calculates the widget height.
  double calculateHeight([double? hourRowHeight]) =>
      calculateTopOffset(widget.maximumTime, hourRowHeight: hourRowHeight);

  /// Calculates the hour row height.
  double _calculateHourRowHeight([ZoomController? controller]) =>
      currentDayViewStyle.hourRowHeight *
      (controller ?? widget.controller).zoomFactor;
}
