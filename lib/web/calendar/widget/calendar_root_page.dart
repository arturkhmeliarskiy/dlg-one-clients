import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/web/calendar/bloc/calendar_bloc.dart';
import 'package:dls_one/web/calendar/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_split_view/multi_split_view.dart';
import 'package:rest_api/rest_api.dart';

@RoutePage()
class CalendarRootPage extends StatefulWidget with AutoRouteWrapper {
  const CalendarRootPage({super.key});

  DateTime get getTodayMidnight {
    return DateTime.now().byDay();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => CalendarBloc(
        restApi: context.read<DlsRestApi>(),
        logger: context.read<DlsLogger>(),
        date: getTodayMidnight,
      )..add(
          CalendarEvent.init(
            date: getTodayMidnight,
            viewType: CalendarViewType.day,
          ),
        ),
      child: this,
    );
  }

  @override
  State<CalendarRootPage> createState() => _CalendarRootPageState();
}

class _CalendarRootPageState extends State<CalendarRootPage> {
  final bool _isNarrow =
      DLSLayoutItemBuilder.values(wide: false, narrow: true)();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return _isNarrow
            ? const AutoRouter()
            : MultiSplitView(
                dividerBuilder: (_, __, ___, ____, _____, ______) {
                  return DlsVerticalPanelSplitter();
                },
                initialAreas: [
                  Area(weight: 0.7, minimalSize: 624.w),
                  Area(weight: 0.3, minimalSize: 312.w),
                ],
                children: const [
                  AutoRouter(),
                  // TODO: используется для добавления виджета со списком дел справа
                  // if (state.model.viewType == CalendarViewType.day)
                  //   CalendarRightView(model: state.model),
                ],
              );
      },
    );
  }
}
