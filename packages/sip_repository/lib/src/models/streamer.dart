import 'package:equatable/equatable.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

/// пользователь, который передает данные
class Streamer extends Equatable {
  /// видео рендер
  /// медиапоток
  /// метка (она проставляется по stream.id через слушателя)
  /// локальный пользователь не имеет метки
  Streamer({
    required MediaStream stream,
    String? label,
  })  : _stream = stream,
        _label = label {
    _renderer = RTCVideoRenderer();
  }

  late RTCVideoRenderer _renderer;
  final MediaStream _stream;
  String? _label;

  RTCVideoRenderer get renderer => _renderer;

  MediaStream get stream => _stream;

  String? get label => _label;

  String get key => _stream.id;

  set label(String? val) => _label = val;

  @override
  List<Object?> get props => [key, label, renderer];

  /// необходимо обязательно вызвать
  /// перед использованием renderer
  Future<void> initialize() async {
    await renderer.initialize();
  }

  /// необходимо обязательно вызвать
  /// по завершению работы
  Future<void> dispose() async {
    try {
      await renderer.dispose();
    } catch (e) {
      print('[$runtimeType] dispose error $e');
    }

    /// для локального надо
    /// иначе просто пропустим
    try {
      final tracks = stream.getTracks();
      for (var i = 0; i < tracks.length; i++) {
        await tracks[i].stop();
      }
    } catch (e) {
      print('[$runtimeType] dispose error $e');
    }
    try {
      await stream.dispose();
    } catch (e) {
      print('[$runtimeType] dispose error $e');
    }
  }
}
