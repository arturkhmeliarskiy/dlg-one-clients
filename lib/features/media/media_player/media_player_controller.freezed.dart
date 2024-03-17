// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'media_player_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaSource {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String asset) asset,
    required TResult Function(String name, Uri uri, String mimeType) url,
    required TResult Function(XFile file) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String asset)? asset,
    TResult? Function(String name, Uri uri, String mimeType)? url,
    TResult? Function(XFile file)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String asset)? asset,
    TResult Function(String name, Uri uri, String mimeType)? url,
    TResult Function(XFile file)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetMediaSource value) asset,
    required TResult Function(UrlMediaSource value) url,
    required TResult Function(FileMediaSource value) file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetMediaSource value)? asset,
    TResult? Function(UrlMediaSource value)? url,
    TResult? Function(FileMediaSource value)? file,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetMediaSource value)? asset,
    TResult Function(UrlMediaSource value)? url,
    TResult Function(FileMediaSource value)? file,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaSourceCopyWith<$Res> {
  factory $MediaSourceCopyWith(
          MediaSource value, $Res Function(MediaSource) then) =
      _$MediaSourceCopyWithImpl<$Res, MediaSource>;
}

/// @nodoc
class _$MediaSourceCopyWithImpl<$Res, $Val extends MediaSource>
    implements $MediaSourceCopyWith<$Res> {
  _$MediaSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AssetMediaSourceCopyWith<$Res> {
  factory _$$AssetMediaSourceCopyWith(
          _$AssetMediaSource value, $Res Function(_$AssetMediaSource) then) =
      __$$AssetMediaSourceCopyWithImpl<$Res>;
  @useResult
  $Res call({String asset});
}

/// @nodoc
class __$$AssetMediaSourceCopyWithImpl<$Res>
    extends _$MediaSourceCopyWithImpl<$Res, _$AssetMediaSource>
    implements _$$AssetMediaSourceCopyWith<$Res> {
  __$$AssetMediaSourceCopyWithImpl(
      _$AssetMediaSource _value, $Res Function(_$AssetMediaSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
  }) {
    return _then(_$AssetMediaSource(
      null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssetMediaSource
    with DiagnosticableTreeMixin
    implements AssetMediaSource {
  const _$AssetMediaSource(this.asset);

  @override
  final String asset;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MediaSource.asset(asset: $asset)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MediaSource.asset'))
      ..add(DiagnosticsProperty('asset', asset));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetMediaSource &&
            (identical(other.asset, asset) || other.asset == asset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetMediaSourceCopyWith<_$AssetMediaSource> get copyWith =>
      __$$AssetMediaSourceCopyWithImpl<_$AssetMediaSource>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String asset) asset,
    required TResult Function(String name, Uri uri, String mimeType) url,
    required TResult Function(XFile file) file,
  }) {
    return asset(this.asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String asset)? asset,
    TResult? Function(String name, Uri uri, String mimeType)? url,
    TResult? Function(XFile file)? file,
  }) {
    return asset?.call(this.asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String asset)? asset,
    TResult Function(String name, Uri uri, String mimeType)? url,
    TResult Function(XFile file)? file,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(this.asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetMediaSource value) asset,
    required TResult Function(UrlMediaSource value) url,
    required TResult Function(FileMediaSource value) file,
  }) {
    return asset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetMediaSource value)? asset,
    TResult? Function(UrlMediaSource value)? url,
    TResult? Function(FileMediaSource value)? file,
  }) {
    return asset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetMediaSource value)? asset,
    TResult Function(UrlMediaSource value)? url,
    TResult Function(FileMediaSource value)? file,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(this);
    }
    return orElse();
  }
}

abstract class AssetMediaSource implements MediaSource {
  const factory AssetMediaSource(final String asset) = _$AssetMediaSource;

  String get asset;
  @JsonKey(ignore: true)
  _$$AssetMediaSourceCopyWith<_$AssetMediaSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UrlMediaSourceCopyWith<$Res> {
  factory _$$UrlMediaSourceCopyWith(
          _$UrlMediaSource value, $Res Function(_$UrlMediaSource) then) =
      __$$UrlMediaSourceCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, Uri uri, String mimeType});
}

/// @nodoc
class __$$UrlMediaSourceCopyWithImpl<$Res>
    extends _$MediaSourceCopyWithImpl<$Res, _$UrlMediaSource>
    implements _$$UrlMediaSourceCopyWith<$Res> {
  __$$UrlMediaSourceCopyWithImpl(
      _$UrlMediaSource _value, $Res Function(_$UrlMediaSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uri = null,
    Object? mimeType = null,
  }) {
    return _then(_$UrlMediaSource(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UrlMediaSource with DiagnosticableTreeMixin implements UrlMediaSource {
  const _$UrlMediaSource(this.name, this.uri, this.mimeType);

  @override
  final String name;
  @override
  final Uri uri;
  @override
  final String mimeType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MediaSource.url(name: $name, uri: $uri, mimeType: $mimeType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MediaSource.url'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('uri', uri))
      ..add(DiagnosticsProperty('mimeType', mimeType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlMediaSource &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, uri, mimeType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlMediaSourceCopyWith<_$UrlMediaSource> get copyWith =>
      __$$UrlMediaSourceCopyWithImpl<_$UrlMediaSource>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String asset) asset,
    required TResult Function(String name, Uri uri, String mimeType) url,
    required TResult Function(XFile file) file,
  }) {
    return url(name, uri, mimeType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String asset)? asset,
    TResult? Function(String name, Uri uri, String mimeType)? url,
    TResult? Function(XFile file)? file,
  }) {
    return url?.call(name, uri, mimeType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String asset)? asset,
    TResult Function(String name, Uri uri, String mimeType)? url,
    TResult Function(XFile file)? file,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(name, uri, mimeType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetMediaSource value) asset,
    required TResult Function(UrlMediaSource value) url,
    required TResult Function(FileMediaSource value) file,
  }) {
    return url(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetMediaSource value)? asset,
    TResult? Function(UrlMediaSource value)? url,
    TResult? Function(FileMediaSource value)? file,
  }) {
    return url?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetMediaSource value)? asset,
    TResult Function(UrlMediaSource value)? url,
    TResult Function(FileMediaSource value)? file,
    required TResult orElse(),
  }) {
    if (url != null) {
      return url(this);
    }
    return orElse();
  }
}

abstract class UrlMediaSource implements MediaSource {
  const factory UrlMediaSource(
          final String name, final Uri uri, final String mimeType) =
      _$UrlMediaSource;

  String get name;
  Uri get uri;
  String get mimeType;
  @JsonKey(ignore: true)
  _$$UrlMediaSourceCopyWith<_$UrlMediaSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileMediaSourceCopyWith<$Res> {
  factory _$$FileMediaSourceCopyWith(
          _$FileMediaSource value, $Res Function(_$FileMediaSource) then) =
      __$$FileMediaSourceCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile file});
}

/// @nodoc
class __$$FileMediaSourceCopyWithImpl<$Res>
    extends _$MediaSourceCopyWithImpl<$Res, _$FileMediaSource>
    implements _$$FileMediaSourceCopyWith<$Res> {
  __$$FileMediaSourceCopyWithImpl(
      _$FileMediaSource _value, $Res Function(_$FileMediaSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$FileMediaSource(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$FileMediaSource
    with DiagnosticableTreeMixin
    implements FileMediaSource {
  const _$FileMediaSource(this.file);

  @override
  final XFile file;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MediaSource.file(file: $file)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MediaSource.file'))
      ..add(DiagnosticsProperty('file', file));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileMediaSource &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileMediaSourceCopyWith<_$FileMediaSource> get copyWith =>
      __$$FileMediaSourceCopyWithImpl<_$FileMediaSource>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String asset) asset,
    required TResult Function(String name, Uri uri, String mimeType) url,
    required TResult Function(XFile file) file,
  }) {
    return file(this.file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String asset)? asset,
    TResult? Function(String name, Uri uri, String mimeType)? url,
    TResult? Function(XFile file)? file,
  }) {
    return file?.call(this.file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String asset)? asset,
    TResult Function(String name, Uri uri, String mimeType)? url,
    TResult Function(XFile file)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this.file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetMediaSource value) asset,
    required TResult Function(UrlMediaSource value) url,
    required TResult Function(FileMediaSource value) file,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetMediaSource value)? asset,
    TResult? Function(UrlMediaSource value)? url,
    TResult? Function(FileMediaSource value)? file,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetMediaSource value)? asset,
    TResult Function(UrlMediaSource value)? url,
    TResult Function(FileMediaSource value)? file,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class FileMediaSource implements MediaSource {
  const factory FileMediaSource(final XFile file) = _$FileMediaSource;

  XFile get file;
  @JsonKey(ignore: true)
  _$$FileMediaSourceCopyWith<_$FileMediaSource> get copyWith =>
      throw _privateConstructorUsedError;
}
