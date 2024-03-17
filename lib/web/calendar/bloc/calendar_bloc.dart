import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dls_calendar/dls_calendar.dart';
import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/todo/data/todo_repositoy.dart';
import 'package:dls_one/features/todo/model/todo_model.dart';
import 'package:dls_one/utils/utils.dart';
import 'package:dls_one/web/calendar/bloc/base_bloc_mixin.dart';
import 'package:dls_one/web/calendar/calendar.dart';
import 'package:dls_one/web/calendar/model/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'calendar_bloc.freezed.dart';

part 'calendar_event.dart';

part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState>
    with BaseBlocMixin<CalendarState> {
  CalendarBloc({
    required DlsRestApi restApi,
    required DlsLogger logger,
    required DateTime date,
  })  : _restApi = restApi,
        _logger = logger,
        super(CalendarState.initial(model: CalendarModel(date: date))) {
    on<CalendarEvent>(
      (event, emit) => event.map(
        init: (event) => _init(event, emit),
        fetch: (event) => _fetch(event, emit),
        setDateAndViewType: (event) => _setDateAndViewType(event, emit),
        changeViewType: (event) => _changeViewType(event, emit),
        addCalendarItem: (event) => _addCalendarItem(event, emit),
        emitError: (event) => _emitError(event, emit),
        changeCalendarItemTime: (event) => _changeCalendarItemTime(event, emit),
        manageMenu: (event) => _manageMenu(event, emit),
        removeMenu: (event) => _removeMenu(event, emit),
        changeTodoStatus: (event) => _changeTodoStatus(event, emit),
        updateModel: (event) => _updateModel(event, emit),
        moveEventTime: (event) => _moveEventTime(event, emit),
      ),
      transformer: sequential(),
    );
  }

  final DlsRestApi _restApi;
  final DlsLogger _logger;

  @override
  void handleError(String message, StackTrace stackTrace) {
    _logger.errorPrinter(message, stackTrace);
    add(CalendarEvent.emitError(message));
  }

  Future<void> _init(
    _Init event,
    Emitter<CalendarState> emit,
  ) async {
    emit(
      CalendarState.loading(model: state.model),
    );
    add(
      const CalendarEvent.fetch(),
    );
  }

  // TODO(Stas): дописать запросы дел и мероприятий с фильтрами по датам
  Future<void> _fetch(
    _Fetch event,
    Emitter<CalendarState> emit,
  ) async {
    if (event.withLoading) {
      emit(CalendarState.loading(model: state.model));
    }
    final eventResponse =
        await performSafeAction<DlsPaginatedResponse<TaskEventModel>>(
      () {
        final selectedDay = state.model.date;
        final DateTime calendarStartDate;
        final DateTime calendarEndDate;
        if (state.model.viewType == CalendarViewType.day) {
          calendarStartDate = selectedDay.startOfDay();
          calendarEndDate = selectedDay.endOfDay();
        } else if (state.model.viewType == CalendarViewType.week) {
          calendarStartDate = selectedDay.getFirstDayOfWeek();
          calendarEndDate = selectedDay.getLastDayOfWeek();
        } else {
          calendarStartDate = selectedDay.getFirstDayOfMonth();
          calendarEndDate = selectedDay.getLastDayOfMonth();
        }

        final request = GetEventsRequest(
          calendarStartDate: calendarStartDate,
          calendarEndDate: calendarEndDate,
        );
        return _restApi.taskEventsApi.getEvents(request);
      },
    );
    var eventItems = <CalendarItemModel>[];
    if (eventResponse?.data != null) {
      eventItems = eventResponse!.data.map(CalendarItemModel.event).toList();
    }

    final todoEventResponse =
        await performSafeAction<DlsPaginatedResponse<TodoModelDTO>>(
      _restApi.todoApi.fetchAll,
    );
    final data = todoEventResponse?.data;
    if (data != null && data.isNotEmpty) {
      final date = DateTime.now();

      eventItems.addAll(
        todoEventResponse!.data
            .map((e) => e.domainModel(date))
            .map(CalendarItemModel.todo)
            .toList(),
      );
    }

    emit(
      CalendarState.loaded(model: state.model.copyWith(items: eventItems)),
    );
  }

  void _setDateAndViewType(
    _SetDateAndViewType event,
    Emitter<CalendarState> emit,
  ) {
    // TODO refactor after MR from Stas
    if (state.model.viewType == CalendarViewType.week) {
      final previousWeekDates = state.model.date.getWeekDates();
      if (previousWeekDates.contains(event.date)) {
        emit(
          CalendarState.loaded(
            model: state.model.copyWith(
              date: event.date,
              viewType: event.viewType ?? state.model.viewType,
            ),
          ),
        );
        return;
      }
    }
    emit(
      CalendarState.loading(
        model: state.model.copyWith(
          date: event.date,
          viewType: event.viewType ?? state.model.viewType,
        ),
      ),
    );
    add(const CalendarEvent.fetch());
  }

  Future<void> _changeViewType(
    _ChangeViewType event,
    Emitter<CalendarState> emit,
  ) async {
    emit(
      CalendarState.loaded(
        model: state.model.copyWith(viewType: event.type),
      ),
    );
  }

  Future<void> _addCalendarItem(
    _AddCalendarItem event,
    Emitter<CalendarState> emit,
  ) async {
    if (event.calendarItemType == CalendarItemType.event) {
      // пока не нужно
    } else if (event.calendarItemType == CalendarItemType.todo) {
      emit(CalendarState.loading(model: state.model));
      await _restApi.todoApi.create(
        UpdateTodoModelRequest(
          title: 'дело из календаря',
          isFullDay: false,
          status: TodoStatus.processing,
          startTime: event.startDateTime,
          endTime: event.endDateTime,
        ),
      );
      add(const CalendarEvent.fetch());
    }
  }

  Future<void> _emitError(
    _EmitError event,
    Emitter<CalendarState> emit,
  ) async {
    emit(
      CalendarState.error(
        event.message,
        model: state.model.copyWith(dragDate: null),
      ),
    );
  }

  Future<void> _changeCalendarItemTime(
    _ChangeCalendarItemTime event,
    Emitter<CalendarState> emit,
  ) async {
    await performSafeAction(
      () async {
        if (event.calendarItemType == CalendarItemType.event) {
          final taskEventModel = (event.model as TaskEventModel).copyWith(
            startAt: event.timeStart,
            endAt: event.timeEnd,
          );
          emit(CalendarState.loading(model: state.model));
          await _restApi.taskEventsApi
              .updateEvent(taskEventModel.id, taskEventModel.toRequest());
          add(const CalendarEvent.fetch());
        } else if (event.calendarItemType == CalendarItemType.todo) {
          final todoModel = event.model as TodoModel;
          emit(CalendarState.loading(model: state.model));
          await _restApi.todoApi.update(
            todoModel.id,
            todoModel.toRequest(
              startTime: event.timeStart,
              endTime: event.timeEnd,
            ),
          );
          add(const CalendarEvent.fetch());
        }
      },
    );
  }

  Future<void> _changeTodoStatus(
    _ChangeTodoStatus event,
    Emitter<CalendarState> emit,
  ) async {
    // находим айтем для изменения
    final CalendarItemModel oldCalendarItem;
    final List<CalendarItemModel> newItems;
    oldCalendarItem = state.model.items.firstWhere(
      (item) =>
          item.id == event.id && item.calendarItemType == CalendarItemType.todo,
    ) as TodoCalendarItemModel;

    // считаю, что не обязательно здесь заново запрашивать все задачи заново, а в случае ошибки юзер получит обратную связь
    await performSafeAction(() async {
      await _restApi.todoApi.update(
        event.id,
        UpdateTodoModelRequest(
          title: oldCalendarItem.title,
          isFullDay: oldCalendarItem.todoIsFullDay ?? true,
          status:
              event.isCompleted ? TodoStatus.completed : TodoStatus.processing,
          startTime: oldCalendarItem.startDateTime,
          endTime: oldCalendarItem.endDateTime,
        ),
      );
    });

    // Удаляем из списка айтемов айтем который нужно изменить
    newItems = List<CalendarItemModel>.from(state.model.items)
      ..removeWhere(
        (item) =>
            item.id == event.id &&
            item.calendarItemType == CalendarItemType.todo,
      );
    // создаем новый айтем с измененными полями
    final todoStatus =
        event.isCompleted ? TodoStatus.completed : TodoStatus.processing;
    final newCalendarItem = oldCalendarItem.copyWithTodoStatus(todoStatus);
    // добавляем новый айтем в массив всех айтемов
    newItems.add(newCalendarItem);
    // эмитим новый стейт
    emit(CalendarState.loaded(model: state.model.copyWith(items: newItems)));
  }

  Future<void> _manageMenu(
    _ManageMenu event,
    Emitter<CalendarState> emit,
  ) async {
    // Определяем какой длительности на календаре будет попап меню
    final menuDuration = state.model.viewType.popupMenuDuration;
    final menuHalfDuration = Duration(minutes: menuDuration.inMinutes ~/ 2);

    // определяем время в которых строится меню
    final menuStartTime =
        truncateSeconds(event.menuTime.subtract(menuHalfDuration));
    final menuEndTime = truncateSeconds(event.menuTime.add(menuHalfDuration));

    // фильтруем массив айтемов только на евенты и таски, без меню
    final newItems = List<CalendarItemModel>.from(state.model.items)
      ..removeWhere(
        (item) => item.calendarItemType == CalendarItemType.popupMenu,
      );

    // фильтруем массив айтемов только на содержащие начальное и конечное время
    final newItemsWithStartAndEndTime = newItems
        .where(
          (item) => item.startDateTime != null && item.endDateTime != null,
        )
        .toList();

    // Находим интервалы больше длительности меню которые подойдут для
    // построения попап меню
    final freeIntervals = _findFreeIntervalsWithMenuDurationOrMore(
      newItemsWithStartAndEndTime,
      event.menuTime,
      menuDuration,
    );

    // сравниваем интервалы свободного времени с временем попапа
    for (final freeInterval in freeIntervals) {
      // Если время начала меню позже или равно времени начала свободного интервала
      // и время конца меню меньше или равно времени конца свободного интервала
      if (((menuStartTime.isAfter(freeInterval.startDataTime)) ||
              (menuStartTime.isAtSameMomentAs(freeInterval.startDataTime))) &&
          ((menuEndTime.isBefore(freeInterval.endDataTime)) ||
              (menuEndTime.isAtSameMomentAs(freeInterval.endDataTime)))) {
        // добавляем новое меню в список евентов
        newItems.add(
          CalendarItemModel.popupMenu(
            PopupMenuModel(
              endDateTime: menuEndTime,
              startDateTime: menuStartTime,
            ),
          ),
        );
        //эмитим новый стейт с меню
        emit(
            CalendarState.loaded(model: state.model.copyWith(items: newItems)));
        break;
      }
    }
  }

  Future<void> _removeMenu(
    _RemoveMenu event,
    Emitter<CalendarState> emit,
  ) async {
    final newItems = List<CalendarItemModel>.from(state.model.items)
      ..removeWhere(
        (item) => item.calendarItemType == CalendarItemType.popupMenu,
      );
    emit(CalendarState.loaded(model: state.model.copyWith(items: newItems)));
  }

  Future<void> _updateModel(
    _UpdateModel event,
    Emitter<CalendarState> emit,
  ) async {
    emit(CalendarState.loaded(model: event.model));
  }

  Future<void> _moveEventTime(
    _MoveEventTime event,
    Emitter<CalendarState> emit,
  ) async {
    await performSafeAction(() async {
      var moveEvent = event.event;
      final diff = event.time
          .difference(moveEvent.startDateTime?.byDay() ?? DateTime(0));

      final list = state.model.items.toList()..remove(moveEvent);
      moveEvent = moveEvent.copyWithStartAndEndDateTime(
        moveEvent.startDateTime?.add(diff) ?? DateTime(0),
        moveEvent.endDateTime?.add(diff) ?? DateTime(0),
      );
      emit(CalendarState.loading(model: state.model));
      await moveEvent.whenOrNull<Future<void>>(
        event: (model) async {
          await _restApi.taskEventsApi.updateEvent(model.id, model.toRequest());
          list.add(moveEvent);
        },
        // TODO config another types
      );
      final model = state.model.copyWith(items: list, dragDate: null);
      emit(CalendarState.initial(model: model));
    });
  }

  /// Объединяет пересекающиеся айтемы по времени
  List<CalendarItemModel> _mergeOverlappingEvents(
    List<CalendarItemModel> items,
  ) {
    final mergedItems = <CalendarItemModel>[];

    // Сортируем список событий по времени начала
    items.sort((a, b) => a.startDateTime!.compareTo(b.startDateTime!));

    // Инициализируем текущее событие первым в списке
    CalendarItemModel? currentEvent = items[0];

    for (var i = 1; i < items.length; i++) {
      // Если следующее событие начинается до окончания текущего события
      if (items[i].startDateTime!.compareTo(currentEvent!.endDateTime!) <= 0) {
        // Обновляем время окончания текущего события, если необходимо
        if (items[i].endDateTime!.compareTo(currentEvent.endDateTime!) > 0) {
          currentEvent =
              currentEvent.copyWithEndDateTime(items[i].endDateTime!);
        }
      } else {
        // Если следующее событие не пересекается с текущим, добавляем текущее событие в список и обновляем текущее событие
        mergedItems.add(currentEvent);
        currentEvent = items[i];
      }
    }

    // Добавляем последнее событие в список
    mergedItems.add(currentEvent!);

    return mergedItems;
  }

  /// Отдает список свободных интервалов больше длительности popup menu
  List<CalendarFreeIntervalModel> _findFreeIntervalsWithMenuDurationOrMore(
    Iterable<CalendarItemModel> items,
    DateTime sortedDay,
    Duration menuDuration,
  ) {
    // получаем в int длительность меню в минутах
    final menuDurationMinutesToInt = menuDuration.inMinutes;

    // Сначала объединяем пересекающиеся события
    final mergedItems = _mergeOverlappingEvents(items.toList());

    final result = <CalendarFreeIntervalModel>[];

    final dayStart = DateTime(
      sortedDay.year,
      sortedDay.month,
      sortedDay.day,
    );
    final dayEnd = DateTime(
      sortedDay.year,
      sortedDay.month,
      sortedDay.add(const Duration(days: 1)).day,
    );

    if ((mergedItems.firstOrNull?.startDateTime
                ?.difference(dayStart)
                .inMinutes ??
            0) >=
        menuDurationMinutesToInt) {
      result.add(
        CalendarFreeIntervalModel(
          startDataTime: truncateSeconds(dayStart),
          endDataTime: truncateSeconds(mergedItems.first.startDateTime!),
        ),
      );
    }

    for (var i = 1; i < mergedItems.length; i++) {
      final duration = mergedItems[i]
          .startDateTime!
          .difference(mergedItems[i - 1].endDateTime!);
      if (duration.inMinutes >= menuDurationMinutesToInt) {
        result.add(
          CalendarFreeIntervalModel(
            startDataTime: truncateSeconds(mergedItems[i - 1].endDateTime!),
            endDataTime: truncateSeconds(mergedItems[i].startDateTime!),
          ),
        );
      }
    }

    if ((dayEnd
            .difference(mergedItems.lastOrNull?.endDateTime ?? dayEnd)
            .inMinutes) >=
        menuDurationMinutesToInt) {
      result.add(
        CalendarFreeIntervalModel(
          startDataTime: truncateSeconds(mergedItems.last.endDateTime!),
          endDataTime: truncateSeconds(dayEnd),
        ),
      );
    }

    return result;
  }
}
