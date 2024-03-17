import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'hover_task_bloc.freezed.dart';
part 'hover_task_event.dart';
part 'hover_task_state.dart';

class HoverTaskBloc extends Bloc<HoverTaskEvent, HoverTaskState> {
  HoverTaskBloc() : super(const HoverTaskState.init()) {
    on<HoverTaskEvent>(
      (event, emitter) => event.map<Future<void>>(
        hoverTask: (event) => _hoverTask(event, emitter),
        init: (event) => _initHoverTask(event, emitter),
      ),
      transformer: sequential(),
    );
  }

  Future<void> _initHoverTask(
    InitHoverTaskEvent event,
    Emitter<HoverTaskState> emit,
  ) async {
    emit(
      const HoverTaskState.preloadData(
        idTask: -1,
      ),
    );
  }

  Future<void> _hoverTask(
    HoverIdTaskEvent event,
    Emitter<HoverTaskState> emit,
  ) async {
    emit(
      HoverTaskState.preloadData(
        idTask: event.idTask,
      ),
    );
  }
}
