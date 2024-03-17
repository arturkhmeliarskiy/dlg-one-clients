import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TODO я считаю что у нас все блоки должны использовать этот миксин и так обрабатывать ошибки, чтобы не писать try catch постоянно
mixin BaseBlocMixin<State> on BlocBase<State> {
  void handleError(String message, StackTrace stackTrace);

  Future<T?> performSafeAction<T>(
      AsyncValueGetter<T> callback,
      ) async {
    if (isClosed) {
      return null;
    }
    try {
      return await callback();
    } catch (exception, stacktrace) {
      handleError('$exception', stacktrace);
      return null;
    }
  }
}
