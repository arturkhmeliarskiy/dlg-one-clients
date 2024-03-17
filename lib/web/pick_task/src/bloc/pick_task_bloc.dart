import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_api/rest_api.dart';

part 'pick_task_bloc.freezed.dart';

part 'pick_task_event.dart';

part 'pick_task_state.dart';

// TODO remove if will not be used
class PickTaskBloc extends Bloc<PickTaskEvent, PickTaskState> {
  PickTaskBloc(this._restApi) : super(const PickTaskState()) {
    on<PickTaskEvent>(
      (event, emitter) => event.map(
        init: (event) => _init(event, emitter),
      ),
    );
  }

  final DlsRestApi _restApi;

  Future<void> _init(_Init event, Emitter<PickTaskState> emit) async {
    emit(const PickTaskState.loading());
    final result = await _restApi.getTasks();
    emit(PickTaskState(tasks: result.tasks));
  }
}
