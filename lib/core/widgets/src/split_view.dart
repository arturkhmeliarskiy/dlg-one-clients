// Copy/pasted from https://github.com/flutter/devtools/blob/master/packages/devtools_app/lib/src/split.dart
// (at commit 6b01869c4e4fefc49b9f11430ce77acaee70b8ab) until it is added to
// Flutter itself, see https://github.com/flutter/flutter/issues/64768
// Also I updated it for null safety and fixed the mouse cursor.

// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// import 'utils.dart';

/// A small double value, used to ensure that comparisons between double are
/// valid.
const defaultEpsilon = 1 / 1000;

// Method to convert degrees to radians
double degToRad(double deg) => deg * (math.pi / 180.0);

/// A widget that takes a list of children, lays them out along [axis], and
/// allows the user to resize them.
///
/// The user can customize the amount of space allocated to each child by
/// dragging a divider between them.
///
/// [initialFractions] defines how much space to give each child when building
/// this widget.
class SplitView extends StatefulWidget {
  /// Builds a split oriented along [axis].
  SplitView({
    required this.axis,
    required this.children,
    required this.initialFractions,
    this.defaultSplitter,
    this.minSizes,
    this.splitters,
    super.key,
  })  : assert(children.length >= 2),
        assert(initialFractions.length >= 2),
        assert(children.length == initialFractions.length) {
    _verifyFractionsSumTo1(initialFractions);
    if (minSizes != null) {
      assert(minSizes?.length == children.length);
    }
    if (splitters != null) {
      assert(splitters?.length == children.length - 1);
    }
  }

  final SizedBox? defaultSplitter;

  /// The main axis the children will lay out on.
  ///
  /// If [Axis.horizontal], the children will be placed in a [Row]
  /// and they will be horizontally resizable.
  ///
  /// If [Axis.vertical], the children will be placed in a [Column]
  /// and they will be vertically resizable.
  ///
  /// Cannot be null.
  final Axis axis;

  /// The children that will be laid out along [axis].
  final List<Widget> children;

  /// The fraction of the layout to allocate to each child in [children].
  ///
  /// The index of [initialFractions] corresponds to the child at index of
  /// [children].
  final List<double> initialFractions;

  /// The minimum size each child is allowed to be.
  final List<double>? minSizes;

  /// Splitter widgets to divide [children].
  ///
  /// If this is null, a default splitter will be used to divide [children].
  final List<SizedBox>? splitters;

  /// The key passed to the divider between children[index] and
  /// children[index + 1].
  ///
  /// Visible to grab it in tests.
  @visibleForTesting
  Key dividerKey(int index) => Key('$this dividerKey $index');

  static Axis axisFor(BuildContext context, double horizontalAspectRatio) {
    final screenSize = MediaQuery.of(context).size;
    final aspectRatio = screenSize.width / screenSize.height;
    if (aspectRatio >= horizontalAspectRatio) {
      return Axis.horizontal;
    }
    return Axis.vertical;
  }

  @override
  State<StatefulWidget> createState() => _SplitViewState();
}

class _SplitViewState extends State<SplitView> {
  List<double> fractions = [];

  bool get isHorizontal => widget.axis == Axis.horizontal;

  @override
  void initState() {
    super.initState();
    fractions = List.from(widget.initialFractions);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: _buildLayout);
  }

  Widget _buildLayout(BuildContext context, BoxConstraints constraints) {
    final width = constraints.maxWidth;
    final height = constraints.maxHeight;
    final axisSize = isHorizontal ? width : height;

    final availableSize = axisSize - _totalSplitterSize();

    // Size calculation helpers.
    double _minSizeForIndex(int index) {
      final minSizes = widget.minSizes;
      if (minSizes == null) {
        return 0;
      }

      var totalMinSize = 0.0;
      for (var minSize in minSizes) {
        totalMinSize += minSize;
      }

      // Reduce the min sizes gracefully if the total required min size for all
      // children is greater than the available size for children.
      if (totalMinSize > availableSize) {
        return minSizes[index] * availableSize / totalMinSize;
      } else {
        return minSizes[index];
      }
    }

    double _minFractionForIndex(int index) =>
        _minSizeForIndex(index) / availableSize;

    void _clampFraction(int index) {
      fractions[index] =
          fractions[index].clamp(_minFractionForIndex(index), 1.0);
    }

    double _sizeForIndex(int index) => availableSize * fractions[index];

    var fractionDeltaRequired = 0.0;
    var fractionDeltaAvailable = 0.0;

    double deltaFromMinimumSize(int index) =>
        fractions[index] - _minFractionForIndex(index);

    for (var i = 0; i < fractions.length; ++i) {
      final delta = deltaFromMinimumSize(i);
      if (delta < 0) {
        fractionDeltaRequired -= delta;
      } else {
        fractionDeltaAvailable += delta;
      }
    }
    if (fractionDeltaRequired > 0) {
      // Likely due to a change in the available size, the current fractions for
      // the children do not obey the min size constraints.
      // The min size constraints for children are scaled so it is always
      // possible to meet them. A scaleFactor greater than 1 would indicate that
      // it is impossible to meet the constraints.
      var scaleFactor = fractionDeltaRequired / fractionDeltaAvailable;
      assert(scaleFactor <= 1 + defaultEpsilon);
      scaleFactor = math.min(scaleFactor, 1);
      for (var i = 0; i < fractions.length; ++i) {
        final delta = deltaFromMinimumSize(i);
        if (delta < 0) {
          // This is equivalent to adding delta but avoids rounding error.
          fractions[i] = _minFractionForIndex(i);
        } else {
          // Reduce all fractions that are above their minimum size by an amount
          // proportional to their ability to reduce their size without
          // violating their minimum size constraints.
          fractions[i] -= delta * scaleFactor;
        }
      }
    }

    // Determine what fraction to give each child, including enough space to
    // display the divider.
    final sizes = List.generate(fractions.length, _sizeForIndex);

    void updateSpacing(DragUpdateDetails dragDetails, int splitterIndex) {
      final dragDelta =
          isHorizontal ? dragDetails.delta.dx : dragDetails.delta.dy;
      final fractionalDelta = dragDelta / axisSize;

      // Returns the actual delta applied to elements before the splitter.
      double updateSpacingBeforeSplitterIndex(double delta) {
        var resultDelta = delta;
        final startingDelta = delta;
        var index = splitterIndex;
        while (index >= 0) {
          fractions[index] += resultDelta;
          final minFractionForIndex = _minFractionForIndex(index);
          if (fractions[index] >= minFractionForIndex) {
            _clampFraction(index);
            return startingDelta;
          }
          resultDelta = fractions[index] - minFractionForIndex;
          _clampFraction(index);
          index--;
        }
        // At this point, we know that both [startingDelta] and [delta] are
        // negative, and that [delta] represents the overflow that did not get
        // applied.
        return startingDelta - resultDelta;
      }

      // Returns the actual delta applied to elements after the splitter.
      double updateSpacingAfterSplitterIndex(double delta) {
        var resultDelta = delta;
        final startingDelta = delta;
        var index = splitterIndex + 1;
        while (index < fractions.length) {
          fractions[index] += resultDelta;
          final minFractionForIndex = _minFractionForIndex(index);
          if (fractions[index] >= minFractionForIndex) {
            _clampFraction(index);
            return startingDelta;
          }
          resultDelta = fractions[index] - minFractionForIndex;
          _clampFraction(index);
          index++;
        }
        // At this point, we know that both [startingDelta] and [delta] are
        // negative, and that [delta] represents the overflow that did not get
        // applied.
        return startingDelta - resultDelta;
      }

      setState(() {
        // Update the fraction of space consumed by the children. Always update
        // the shrinking children first so that we do not over-increase the size
        // of the growing children and cause layout overflow errors.
        if (fractionalDelta <= 0.0) {
          final appliedDelta =
              updateSpacingBeforeSplitterIndex(fractionalDelta);
          updateSpacingAfterSplitterIndex(-appliedDelta);
        } else {
          final appliedDelta =
              updateSpacingAfterSplitterIndex(-fractionalDelta);
          updateSpacingBeforeSplitterIndex(-appliedDelta);
        }
      });
      _verifyFractionsSumTo1(fractions);
    }

    final splitters = widget.splitters;
    final children = <Widget>[];
    for (var i = 0; i < widget.children.length; i++) {
      children.addAll([
        SizedBox(
          width: isHorizontal ? sizes[i] : width,
          height: isHorizontal ? height : sizes[i],
          child: widget.children[i],
        ),
        if (i < widget.children.length - 1)
          MouseRegion(
            cursor: isHorizontal
                ? SystemMouseCursors.resizeColumn
                : SystemMouseCursors.resizeRow,
            child: GestureDetector(
              key: widget.dividerKey(i),
              behavior: HitTestBehavior.translucent,
              onHorizontalDragUpdate: (details) =>
                  isHorizontal ? updateSpacing(details, i) : null,
              onVerticalDragUpdate: (details) =>
                  isHorizontal ? null : updateSpacing(details, i),
              // DartStartBehavior.down is needed to keep the mouse pointer stuck to
              // the drag bar. There still appears to be a few frame lag before the
              // drag action triggers which is't ideal but isn't a launch blocker.
              dragStartBehavior: DragStartBehavior.down,
              child: splitters != null
                  ? splitters[i]
                  : widget.defaultSplitter ??
                      DefaultSplitter(isHorizontal: isHorizontal),
            ),
          ),
      ]);
    }
    return Flex(
      direction: widget.axis,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    );
  }

  double _totalSplitterSize() {
    final numSplitters = widget.children.length - 1;

    final splitters = widget.splitters;
    if (splitters == null) {
      final defSplitterWidth = widget.defaultSplitter?.width ?? DefaultSplitter.splitterWidth;
      final defSplitterHeight = widget.defaultSplitter?.height ?? DefaultSplitter.splitterWidth;
      // return numSplitters * DefaultSplitter.splitterWidth;
      return numSplitters * (isHorizontal ? defSplitterWidth : defSplitterHeight); // DefaultSplitter.splitterWidth;
    } else {
      var totalSize = 0.0;
      for (final splitter in splitters) {
        totalSize += (isHorizontal ? splitter.width : splitter.height) ?? 0;
      }
      return totalSize;
    }
  }
}

class DefaultSplitter extends StatelessWidget {
  const DefaultSplitter({
    required this.isHorizontal,
  });

  static const double iconSize = 24;
  static const double splitterWidth = 12;

  final bool isHorizontal;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: isHorizontal ? degToRad(90) : degToRad(0),
      child: Align(
        widthFactor: 0.5,
        heightFactor: 0.5,
        child: Icon(
          Icons.drag_handle,
          size: iconSize,
          color: Theme.of(context).focusColor,
        ),
      ),
    );
  }
}

void _verifyFractionsSumTo1(List<double> fractions) {
  var sumFractions = 0.0;
  for (final fraction in fractions) {
    sumFractions += fraction;
  }
  assert(
    (1.0 - sumFractions).abs() < defaultEpsilon,
    'Fractions should sum to 1.0, but instead sum to $sumFractions:\n$fractions',
  );
}
