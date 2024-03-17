part of 'sip_bloc.dart';

@freezed
class SipState with _$SipState {
  /// приложение загружено и пользователь ни с кем не говорит,
  /// но звонки в группах могут появляться и исчезать
  const factory SipState.idle({
    /// все звонки в приложении и их метаданные
    required List<ActiveCall> activeCalls,

    /// пойман входящий
    required ActiveCall? incomingCatched,

    /// приватные чаты, звонки которых будут игнорированы
    /// это те звонки в которых пользователь положил трубку
    /// но пользователь на другой стороне еще находится в звонке
    required List<String> uniqueLocalIgnoreCallIds,

    /// сообщение об ошибке
    String? message,
    String? transaction,
  }) = _IdleSipState;

  /// до того как появился id звонка
  const factory SipState.calling({
    /// все звонки в приложении и их метаданные
    required List<ActiveCall> activeCalls,

    /// пойман входящий
    required ActiveCall? incomingCatched,

    /// шаг на котором сейчас находится вызов
    required CallInitStep info,

    /// приватные чаты, звонки которых будут игнорированы
    /// это те звонки в которых пользователь положил трубку
    /// но пользователь на другой стороне еще находится в звонке
    required List<String> uniqueLocalIgnoreCallIds,

    /// развернут ли звонок на весь экран (для десктопа)
    bool? isMaximized,
    String? transaction,
  }) = _CallingSipState;

  /// ид звонка есть и звонок идет
  const factory SipState.activeCall({
    /// все звонки в приложении и их метаданные
    required List<ActiveCall> activeCalls,

    /// пойман входящий
    required ActiveCall? incomingCatched,

    /// приватные чаты, звонки которых будут игнорированы
    /// это те звонки в которых пользователь положил трубку
    /// но пользователь на другой стороне еще находится в звонке
    required List<String> uniqueLocalIgnoreCallIds,
    required ActiveCall currentActiveCall,
    required bool isAudioMuted,
    required bool isVideoMuted,

    /// стримеры
    required Streamer? localStreamer,
    required List<Streamer> remoteStreamers,

    /// развернут ли звонок на весь экран (для десктопа)
    bool? isMaximized,
    String? transaction,
  }) = _ActiveCallSipState;

  /// пользователь положил трубку, необходимо вернуться,
  /// но звонки в группах могут появляться и исчезать
  const factory SipState.hangUp({
    /// все звонки в приложении и их метаданные
    required List<ActiveCall> activeCalls,

    /// пойман входящий
    required ActiveCall? incomingCatched,

    /// приватные чаты, звонки которых будут игнорированы
    /// это те звонки в которых пользователь положил трубку
    /// но пользователь на другой стороне еще находится в звонке
    required List<String> uniqueLocalIgnoreCallIds,

    /// выкинуть сообщение об отмене/занятости абонента
    required OutcomingPersonalCallStatus? status,
    String? transaction,
  }) = _HangupSipState;
}
