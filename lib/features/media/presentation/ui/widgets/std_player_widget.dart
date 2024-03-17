import 'package:dls_one/core/core.dart';
import 'package:dls_one/features/media/media_player/media_player_controller.dart';
import 'package:flutter/material.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({
    required this.state,
    required this.onPause,
    required this.onPlay,
    required this.onSeek,
    super.key,
  });
  final PlayerState state;
  final VoidCallback onPlay;
  final VoidCallback onPause;
  final ValueSetter<Duration> onSeek;

  @override
  State<StatefulWidget> createState() {
    return _PlayerWidgetState();
  }
}

class _PlayerWidgetState extends State<PlayerWidget> {
  Duration? get _duration => widget.state.duration;
  Duration get _position => widget.state.position;

  String? get _durationText => _duration?.toString().split('.').first;
  String get _positionText => _position.toString().split('.').first;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 36.r,
          height: 36.r,
          decoration: BoxDecoration(
            color: context.c_green,
            borderRadius: BorderRadius.all(
              Radius.circular(5.r),
            ),
          ),
          child: !widget.state.isPlaying
              ? Assets.icons.play1.svg(
                  width: 18.w,
                  height: 18.h,
                  color: context.c_white_text,
                )
              : Assets.icons.pause1.svg(
                  width: 18.w,
                  height: 18.h,
                  color: context.c_white_text,
                ),
        ).gestureDetector(
          onTap: !widget.state.isPlaying ? widget.onPlay : widget.onPause,
        ),
        LayoutBuilder(
          builder: (context, wh) {
            return SizedBox(
              width: wh.maxWidth,
              child: Slider(
                onChanged: (v) {
                  final duration = _duration;
                  if (duration == null) return;
                  final position = v * duration.inMilliseconds;
                  widget.onSeek(Duration(milliseconds: position.toInt()));
                },
                value: (_position.inMilliseconds > 0 &&
                        _duration != null &&
                        _position.inMilliseconds < _duration!.inMilliseconds)
                    ? _position.inMilliseconds / _duration!.inMilliseconds
                    : 0.0,
              ),
            );
          },
        ).expanded(),
        Text(
          '$_positionText${_durationText != null ? ' / $_durationText' : ''}',
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
