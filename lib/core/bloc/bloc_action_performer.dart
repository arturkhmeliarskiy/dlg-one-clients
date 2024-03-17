import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BlocActionPerformer<State> on BlocBase<State> {
  Future<void> handleError(
    Object error,
    StackTrace stackTrace,
    Emitter<State> emitter,
  );

  Future<void> performSafeAction(
    AsyncCallback callback,
    Emitter<State> emitter, {
    ValueGetter<State>? loadingState,
    ValueGetter<State>? idleState,
  }) async {
    try {
      final loading = loadingState?.call();
      if (loading != null) {
        emitter.call(loading);
      }

      await callback();
    } catch (error, stackTrace) {
      await handleError(error, stackTrace, emitter);
    } finally {
      final idle = idleState?.call();
      if (idle != null) {
        emitter.call(idle);
      }
    }
  }
}
