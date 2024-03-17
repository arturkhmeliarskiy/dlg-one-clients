// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_and_select_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchAndSelectUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String query, List<DLSUser> group) searchInGroup,
    required TResult Function(List<String> usersIds) getUsersFromPrivateChats,
    required TResult Function(int userDlsId) select,
    required TResult Function(int userDlsId) selectOne,
    required TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)
        deselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String query, List<DLSUser> group)? searchInGroup,
    TResult? Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult? Function(int userDlsId)? select,
    TResult? Function(int userDlsId)? selectOne,
    TResult? Function(int userDlsId, String? cantDeselectSelfMatrixId)?
        deselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String query, List<DLSUser> group)? searchInGroup,
    TResult Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult Function(int userDlsId)? select,
    TResult Function(int userDlsId)? selectOne,
    TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)? deselect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchInGroup value) searchInGroup,
    required TResult Function(_GetUsersFromPrivateChats value)
        getUsersFromPrivateChats,
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOne value) selectOne,
    required TResult Function(_Deselect value) deselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchInGroup value)? searchInGroup,
    TResult? Function(_GetUsersFromPrivateChats value)?
        getUsersFromPrivateChats,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOne value)? selectOne,
    TResult? Function(_Deselect value)? deselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchInGroup value)? searchInGroup,
    TResult Function(_GetUsersFromPrivateChats value)? getUsersFromPrivateChats,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOne value)? selectOne,
    TResult Function(_Deselect value)? deselect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAndSelectUsersEventCopyWith<$Res> {
  factory $SearchAndSelectUsersEventCopyWith(SearchAndSelectUsersEvent value,
          $Res Function(SearchAndSelectUsersEvent) then) =
      _$SearchAndSelectUsersEventCopyWithImpl<$Res, SearchAndSelectUsersEvent>;
}

/// @nodoc
class _$SearchAndSelectUsersEventCopyWithImpl<$Res,
        $Val extends SearchAndSelectUsersEvent>
    implements $SearchAndSelectUsersEventCopyWith<$Res> {
  _$SearchAndSelectUsersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res>
    extends _$SearchAndSelectUsersEventCopyWithImpl<$Res, _$_Search>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_Search(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search extends _Search {
  const _$_Search(this.query) : super._();

  @override
  final String query;

  @override
  String toString() {
    return 'SearchAndSelectUsersEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String query, List<DLSUser> group) searchInGroup,
    required TResult Function(List<String> usersIds) getUsersFromPrivateChats,
    required TResult Function(int userDlsId) select,
    required TResult Function(int userDlsId) selectOne,
    required TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)
        deselect,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String query, List<DLSUser> group)? searchInGroup,
    TResult? Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult? Function(int userDlsId)? select,
    TResult? Function(int userDlsId)? selectOne,
    TResult? Function(int userDlsId, String? cantDeselectSelfMatrixId)?
        deselect,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String query, List<DLSUser> group)? searchInGroup,
    TResult Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult Function(int userDlsId)? select,
    TResult Function(int userDlsId)? selectOne,
    TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)? deselect,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchInGroup value) searchInGroup,
    required TResult Function(_GetUsersFromPrivateChats value)
        getUsersFromPrivateChats,
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOne value) selectOne,
    required TResult Function(_Deselect value) deselect,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchInGroup value)? searchInGroup,
    TResult? Function(_GetUsersFromPrivateChats value)?
        getUsersFromPrivateChats,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOne value)? selectOne,
    TResult? Function(_Deselect value)? deselect,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchInGroup value)? searchInGroup,
    TResult Function(_GetUsersFromPrivateChats value)? getUsersFromPrivateChats,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOne value)? selectOne,
    TResult Function(_Deselect value)? deselect,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search extends SearchAndSelectUsersEvent {
  const factory _Search(final String query) = _$_Search;
  const _Search._() : super._();

  String get query;
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchInGroupCopyWith<$Res> {
  factory _$$_SearchInGroupCopyWith(
          _$_SearchInGroup value, $Res Function(_$_SearchInGroup) then) =
      __$$_SearchInGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, List<DLSUser> group});
}

/// @nodoc
class __$$_SearchInGroupCopyWithImpl<$Res>
    extends _$SearchAndSelectUsersEventCopyWithImpl<$Res, _$_SearchInGroup>
    implements _$$_SearchInGroupCopyWith<$Res> {
  __$$_SearchInGroupCopyWithImpl(
      _$_SearchInGroup _value, $Res Function(_$_SearchInGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? group = null,
  }) {
    return _then(_$_SearchInGroup(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      null == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
    ));
  }
}

/// @nodoc

class _$_SearchInGroup extends _SearchInGroup {
  const _$_SearchInGroup(this.query, final List<DLSUser> group)
      : _group = group,
        super._();

  @override
  final String query;
  final List<DLSUser> _group;
  @override
  List<DLSUser> get group {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_group);
  }

  @override
  String toString() {
    return 'SearchAndSelectUsersEvent.searchInGroup(query: $query, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchInGroup &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._group, _group));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_group));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchInGroupCopyWith<_$_SearchInGroup> get copyWith =>
      __$$_SearchInGroupCopyWithImpl<_$_SearchInGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String query, List<DLSUser> group) searchInGroup,
    required TResult Function(List<String> usersIds) getUsersFromPrivateChats,
    required TResult Function(int userDlsId) select,
    required TResult Function(int userDlsId) selectOne,
    required TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)
        deselect,
  }) {
    return searchInGroup(query, group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String query, List<DLSUser> group)? searchInGroup,
    TResult? Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult? Function(int userDlsId)? select,
    TResult? Function(int userDlsId)? selectOne,
    TResult? Function(int userDlsId, String? cantDeselectSelfMatrixId)?
        deselect,
  }) {
    return searchInGroup?.call(query, group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String query, List<DLSUser> group)? searchInGroup,
    TResult Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult Function(int userDlsId)? select,
    TResult Function(int userDlsId)? selectOne,
    TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)? deselect,
    required TResult orElse(),
  }) {
    if (searchInGroup != null) {
      return searchInGroup(query, group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchInGroup value) searchInGroup,
    required TResult Function(_GetUsersFromPrivateChats value)
        getUsersFromPrivateChats,
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOne value) selectOne,
    required TResult Function(_Deselect value) deselect,
  }) {
    return searchInGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchInGroup value)? searchInGroup,
    TResult? Function(_GetUsersFromPrivateChats value)?
        getUsersFromPrivateChats,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOne value)? selectOne,
    TResult? Function(_Deselect value)? deselect,
  }) {
    return searchInGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchInGroup value)? searchInGroup,
    TResult Function(_GetUsersFromPrivateChats value)? getUsersFromPrivateChats,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOne value)? selectOne,
    TResult Function(_Deselect value)? deselect,
    required TResult orElse(),
  }) {
    if (searchInGroup != null) {
      return searchInGroup(this);
    }
    return orElse();
  }
}

abstract class _SearchInGroup extends SearchAndSelectUsersEvent {
  const factory _SearchInGroup(final String query, final List<DLSUser> group) =
      _$_SearchInGroup;
  const _SearchInGroup._() : super._();

  String get query;
  List<DLSUser> get group;
  @JsonKey(ignore: true)
  _$$_SearchInGroupCopyWith<_$_SearchInGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetUsersFromPrivateChatsCopyWith<$Res> {
  factory _$$_GetUsersFromPrivateChatsCopyWith(
          _$_GetUsersFromPrivateChats value,
          $Res Function(_$_GetUsersFromPrivateChats) then) =
      __$$_GetUsersFromPrivateChatsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> usersIds});
}

/// @nodoc
class __$$_GetUsersFromPrivateChatsCopyWithImpl<$Res>
    extends _$SearchAndSelectUsersEventCopyWithImpl<$Res,
        _$_GetUsersFromPrivateChats>
    implements _$$_GetUsersFromPrivateChatsCopyWith<$Res> {
  __$$_GetUsersFromPrivateChatsCopyWithImpl(_$_GetUsersFromPrivateChats _value,
      $Res Function(_$_GetUsersFromPrivateChats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersIds = null,
  }) {
    return _then(_$_GetUsersFromPrivateChats(
      null == usersIds
          ? _value._usersIds
          : usersIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_GetUsersFromPrivateChats extends _GetUsersFromPrivateChats {
  const _$_GetUsersFromPrivateChats(final List<String> usersIds)
      : _usersIds = usersIds,
        super._();

  final List<String> _usersIds;
  @override
  List<String> get usersIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersIds);
  }

  @override
  String toString() {
    return 'SearchAndSelectUsersEvent.getUsersFromPrivateChats(usersIds: $usersIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUsersFromPrivateChats &&
            const DeepCollectionEquality().equals(other._usersIds, _usersIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_usersIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUsersFromPrivateChatsCopyWith<_$_GetUsersFromPrivateChats>
      get copyWith => __$$_GetUsersFromPrivateChatsCopyWithImpl<
          _$_GetUsersFromPrivateChats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String query, List<DLSUser> group) searchInGroup,
    required TResult Function(List<String> usersIds) getUsersFromPrivateChats,
    required TResult Function(int userDlsId) select,
    required TResult Function(int userDlsId) selectOne,
    required TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)
        deselect,
  }) {
    return getUsersFromPrivateChats(usersIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String query, List<DLSUser> group)? searchInGroup,
    TResult? Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult? Function(int userDlsId)? select,
    TResult? Function(int userDlsId)? selectOne,
    TResult? Function(int userDlsId, String? cantDeselectSelfMatrixId)?
        deselect,
  }) {
    return getUsersFromPrivateChats?.call(usersIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String query, List<DLSUser> group)? searchInGroup,
    TResult Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult Function(int userDlsId)? select,
    TResult Function(int userDlsId)? selectOne,
    TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)? deselect,
    required TResult orElse(),
  }) {
    if (getUsersFromPrivateChats != null) {
      return getUsersFromPrivateChats(usersIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchInGroup value) searchInGroup,
    required TResult Function(_GetUsersFromPrivateChats value)
        getUsersFromPrivateChats,
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOne value) selectOne,
    required TResult Function(_Deselect value) deselect,
  }) {
    return getUsersFromPrivateChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchInGroup value)? searchInGroup,
    TResult? Function(_GetUsersFromPrivateChats value)?
        getUsersFromPrivateChats,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOne value)? selectOne,
    TResult? Function(_Deselect value)? deselect,
  }) {
    return getUsersFromPrivateChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchInGroup value)? searchInGroup,
    TResult Function(_GetUsersFromPrivateChats value)? getUsersFromPrivateChats,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOne value)? selectOne,
    TResult Function(_Deselect value)? deselect,
    required TResult orElse(),
  }) {
    if (getUsersFromPrivateChats != null) {
      return getUsersFromPrivateChats(this);
    }
    return orElse();
  }
}

abstract class _GetUsersFromPrivateChats extends SearchAndSelectUsersEvent {
  const factory _GetUsersFromPrivateChats(final List<String> usersIds) =
      _$_GetUsersFromPrivateChats;
  const _GetUsersFromPrivateChats._() : super._();

  List<String> get usersIds;
  @JsonKey(ignore: true)
  _$$_GetUsersFromPrivateChatsCopyWith<_$_GetUsersFromPrivateChats>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCopyWith<$Res> {
  factory _$$_SelectCopyWith(_$_Select value, $Res Function(_$_Select) then) =
      __$$_SelectCopyWithImpl<$Res>;
  @useResult
  $Res call({int userDlsId});
}

/// @nodoc
class __$$_SelectCopyWithImpl<$Res>
    extends _$SearchAndSelectUsersEventCopyWithImpl<$Res, _$_Select>
    implements _$$_SelectCopyWith<$Res> {
  __$$_SelectCopyWithImpl(_$_Select _value, $Res Function(_$_Select) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDlsId = null,
  }) {
    return _then(_$_Select(
      null == userDlsId
          ? _value.userDlsId
          : userDlsId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Select extends _Select {
  const _$_Select(this.userDlsId) : super._();

  @override
  final int userDlsId;

  @override
  String toString() {
    return 'SearchAndSelectUsersEvent.select(userDlsId: $userDlsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Select &&
            (identical(other.userDlsId, userDlsId) ||
                other.userDlsId == userDlsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDlsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      __$$_SelectCopyWithImpl<_$_Select>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String query, List<DLSUser> group) searchInGroup,
    required TResult Function(List<String> usersIds) getUsersFromPrivateChats,
    required TResult Function(int userDlsId) select,
    required TResult Function(int userDlsId) selectOne,
    required TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)
        deselect,
  }) {
    return select(userDlsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String query, List<DLSUser> group)? searchInGroup,
    TResult? Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult? Function(int userDlsId)? select,
    TResult? Function(int userDlsId)? selectOne,
    TResult? Function(int userDlsId, String? cantDeselectSelfMatrixId)?
        deselect,
  }) {
    return select?.call(userDlsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String query, List<DLSUser> group)? searchInGroup,
    TResult Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult Function(int userDlsId)? select,
    TResult Function(int userDlsId)? selectOne,
    TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)? deselect,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(userDlsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchInGroup value) searchInGroup,
    required TResult Function(_GetUsersFromPrivateChats value)
        getUsersFromPrivateChats,
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOne value) selectOne,
    required TResult Function(_Deselect value) deselect,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchInGroup value)? searchInGroup,
    TResult? Function(_GetUsersFromPrivateChats value)?
        getUsersFromPrivateChats,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOne value)? selectOne,
    TResult? Function(_Deselect value)? deselect,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchInGroup value)? searchInGroup,
    TResult Function(_GetUsersFromPrivateChats value)? getUsersFromPrivateChats,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOne value)? selectOne,
    TResult Function(_Deselect value)? deselect,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select extends SearchAndSelectUsersEvent {
  const factory _Select(final int userDlsId) = _$_Select;
  const _Select._() : super._();

  int get userDlsId;
  @JsonKey(ignore: true)
  _$$_SelectCopyWith<_$_Select> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectOneCopyWith<$Res> {
  factory _$$_SelectOneCopyWith(
          _$_SelectOne value, $Res Function(_$_SelectOne) then) =
      __$$_SelectOneCopyWithImpl<$Res>;
  @useResult
  $Res call({int userDlsId});
}

/// @nodoc
class __$$_SelectOneCopyWithImpl<$Res>
    extends _$SearchAndSelectUsersEventCopyWithImpl<$Res, _$_SelectOne>
    implements _$$_SelectOneCopyWith<$Res> {
  __$$_SelectOneCopyWithImpl(
      _$_SelectOne _value, $Res Function(_$_SelectOne) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDlsId = null,
  }) {
    return _then(_$_SelectOne(
      null == userDlsId
          ? _value.userDlsId
          : userDlsId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectOne extends _SelectOne {
  const _$_SelectOne(this.userDlsId) : super._();

  @override
  final int userDlsId;

  @override
  String toString() {
    return 'SearchAndSelectUsersEvent.selectOne(userDlsId: $userDlsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectOne &&
            (identical(other.userDlsId, userDlsId) ||
                other.userDlsId == userDlsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDlsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectOneCopyWith<_$_SelectOne> get copyWith =>
      __$$_SelectOneCopyWithImpl<_$_SelectOne>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String query, List<DLSUser> group) searchInGroup,
    required TResult Function(List<String> usersIds) getUsersFromPrivateChats,
    required TResult Function(int userDlsId) select,
    required TResult Function(int userDlsId) selectOne,
    required TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)
        deselect,
  }) {
    return selectOne(userDlsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String query, List<DLSUser> group)? searchInGroup,
    TResult? Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult? Function(int userDlsId)? select,
    TResult? Function(int userDlsId)? selectOne,
    TResult? Function(int userDlsId, String? cantDeselectSelfMatrixId)?
        deselect,
  }) {
    return selectOne?.call(userDlsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String query, List<DLSUser> group)? searchInGroup,
    TResult Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult Function(int userDlsId)? select,
    TResult Function(int userDlsId)? selectOne,
    TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)? deselect,
    required TResult orElse(),
  }) {
    if (selectOne != null) {
      return selectOne(userDlsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchInGroup value) searchInGroup,
    required TResult Function(_GetUsersFromPrivateChats value)
        getUsersFromPrivateChats,
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOne value) selectOne,
    required TResult Function(_Deselect value) deselect,
  }) {
    return selectOne(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchInGroup value)? searchInGroup,
    TResult? Function(_GetUsersFromPrivateChats value)?
        getUsersFromPrivateChats,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOne value)? selectOne,
    TResult? Function(_Deselect value)? deselect,
  }) {
    return selectOne?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchInGroup value)? searchInGroup,
    TResult Function(_GetUsersFromPrivateChats value)? getUsersFromPrivateChats,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOne value)? selectOne,
    TResult Function(_Deselect value)? deselect,
    required TResult orElse(),
  }) {
    if (selectOne != null) {
      return selectOne(this);
    }
    return orElse();
  }
}

abstract class _SelectOne extends SearchAndSelectUsersEvent {
  const factory _SelectOne(final int userDlsId) = _$_SelectOne;
  const _SelectOne._() : super._();

  int get userDlsId;
  @JsonKey(ignore: true)
  _$$_SelectOneCopyWith<_$_SelectOne> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeselectCopyWith<$Res> {
  factory _$$_DeselectCopyWith(
          _$_Deselect value, $Res Function(_$_Deselect) then) =
      __$$_DeselectCopyWithImpl<$Res>;
  @useResult
  $Res call({int userDlsId, String? cantDeselectSelfMatrixId});
}

/// @nodoc
class __$$_DeselectCopyWithImpl<$Res>
    extends _$SearchAndSelectUsersEventCopyWithImpl<$Res, _$_Deselect>
    implements _$$_DeselectCopyWith<$Res> {
  __$$_DeselectCopyWithImpl(
      _$_Deselect _value, $Res Function(_$_Deselect) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDlsId = null,
    Object? cantDeselectSelfMatrixId = freezed,
  }) {
    return _then(_$_Deselect(
      null == userDlsId
          ? _value.userDlsId
          : userDlsId // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == cantDeselectSelfMatrixId
          ? _value.cantDeselectSelfMatrixId
          : cantDeselectSelfMatrixId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Deselect extends _Deselect {
  const _$_Deselect(this.userDlsId, this.cantDeselectSelfMatrixId) : super._();

  @override
  final int userDlsId;
  @override
  final String? cantDeselectSelfMatrixId;

  @override
  String toString() {
    return 'SearchAndSelectUsersEvent.deselect(userDlsId: $userDlsId, cantDeselectSelfMatrixId: $cantDeselectSelfMatrixId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deselect &&
            (identical(other.userDlsId, userDlsId) ||
                other.userDlsId == userDlsId) &&
            (identical(
                    other.cantDeselectSelfMatrixId, cantDeselectSelfMatrixId) ||
                other.cantDeselectSelfMatrixId == cantDeselectSelfMatrixId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userDlsId, cantDeselectSelfMatrixId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeselectCopyWith<_$_Deselect> get copyWith =>
      __$$_DeselectCopyWithImpl<_$_Deselect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String query, List<DLSUser> group) searchInGroup,
    required TResult Function(List<String> usersIds) getUsersFromPrivateChats,
    required TResult Function(int userDlsId) select,
    required TResult Function(int userDlsId) selectOne,
    required TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)
        deselect,
  }) {
    return deselect(userDlsId, cantDeselectSelfMatrixId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String query, List<DLSUser> group)? searchInGroup,
    TResult? Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult? Function(int userDlsId)? select,
    TResult? Function(int userDlsId)? selectOne,
    TResult? Function(int userDlsId, String? cantDeselectSelfMatrixId)?
        deselect,
  }) {
    return deselect?.call(userDlsId, cantDeselectSelfMatrixId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String query, List<DLSUser> group)? searchInGroup,
    TResult Function(List<String> usersIds)? getUsersFromPrivateChats,
    TResult Function(int userDlsId)? select,
    TResult Function(int userDlsId)? selectOne,
    TResult Function(int userDlsId, String? cantDeselectSelfMatrixId)? deselect,
    required TResult orElse(),
  }) {
    if (deselect != null) {
      return deselect(userDlsId, cantDeselectSelfMatrixId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchInGroup value) searchInGroup,
    required TResult Function(_GetUsersFromPrivateChats value)
        getUsersFromPrivateChats,
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOne value) selectOne,
    required TResult Function(_Deselect value) deselect,
  }) {
    return deselect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchInGroup value)? searchInGroup,
    TResult? Function(_GetUsersFromPrivateChats value)?
        getUsersFromPrivateChats,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOne value)? selectOne,
    TResult? Function(_Deselect value)? deselect,
  }) {
    return deselect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchInGroup value)? searchInGroup,
    TResult Function(_GetUsersFromPrivateChats value)? getUsersFromPrivateChats,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOne value)? selectOne,
    TResult Function(_Deselect value)? deselect,
    required TResult orElse(),
  }) {
    if (deselect != null) {
      return deselect(this);
    }
    return orElse();
  }
}

abstract class _Deselect extends SearchAndSelectUsersEvent {
  const factory _Deselect(
          final int userDlsId, final String? cantDeselectSelfMatrixId) =
      _$_Deselect;
  const _Deselect._() : super._();

  int get userDlsId;
  String? get cantDeselectSelfMatrixId;
  @JsonKey(ignore: true)
  _$$_DeselectCopyWith<_$_Deselect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchAndSelectUsersState {
  List<DLSUser> get selectedUsers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)
        initial,
    required TResult Function(List<DLSUser> selectedUsers) loading,
    required TResult Function(
            List<DLSUser> selectedUsers, List<DLSUser> searchResult)
        data,
    required TResult Function(List<DLSUser> selectedUsers, String message)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)?
        initial,
    TResult? Function(List<DLSUser> selectedUsers)? loading,
    TResult? Function(List<DLSUser> selectedUsers, List<DLSUser> searchResult)?
        data,
    TResult? Function(List<DLSUser> selectedUsers, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)?
        initial,
    TResult Function(List<DLSUser> selectedUsers)? loading,
    TResult Function(List<DLSUser> selectedUsers, List<DLSUser> searchResult)?
        data,
    TResult Function(List<DLSUser> selectedUsers, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchAndSelectUsersState value) initial,
    required TResult Function(_LoadingSearchAndSelectUsersState value) loading,
    required TResult Function(_DataSearchAndSelectUsersState value) data,
    required TResult Function(_FailureSearchAndSelectUsersState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAndSelectUsersState value)? initial,
    TResult? Function(_LoadingSearchAndSelectUsersState value)? loading,
    TResult? Function(_DataSearchAndSelectUsersState value)? data,
    TResult? Function(_FailureSearchAndSelectUsersState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAndSelectUsersState value)? initial,
    TResult Function(_LoadingSearchAndSelectUsersState value)? loading,
    TResult Function(_DataSearchAndSelectUsersState value)? data,
    TResult Function(_FailureSearchAndSelectUsersState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAndSelectUsersStateCopyWith<SearchAndSelectUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAndSelectUsersStateCopyWith<$Res> {
  factory $SearchAndSelectUsersStateCopyWith(SearchAndSelectUsersState value,
          $Res Function(SearchAndSelectUsersState) then) =
      _$SearchAndSelectUsersStateCopyWithImpl<$Res, SearchAndSelectUsersState>;
  @useResult
  $Res call({List<DLSUser> selectedUsers});
}

/// @nodoc
class _$SearchAndSelectUsersStateCopyWithImpl<$Res,
        $Val extends SearchAndSelectUsersState>
    implements $SearchAndSelectUsersStateCopyWith<$Res> {
  _$SearchAndSelectUsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUsers = null,
  }) {
    return _then(_value.copyWith(
      selectedUsers: null == selectedUsers
          ? _value.selectedUsers
          : selectedUsers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialSearchAndSelectUsersStateCopyWith<$Res>
    implements $SearchAndSelectUsersStateCopyWith<$Res> {
  factory _$$_InitialSearchAndSelectUsersStateCopyWith(
          _$_InitialSearchAndSelectUsersState value,
          $Res Function(_$_InitialSearchAndSelectUsersState) then) =
      __$$_InitialSearchAndSelectUsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers});
}

/// @nodoc
class __$$_InitialSearchAndSelectUsersStateCopyWithImpl<$Res>
    extends _$SearchAndSelectUsersStateCopyWithImpl<$Res,
        _$_InitialSearchAndSelectUsersState>
    implements _$$_InitialSearchAndSelectUsersStateCopyWith<$Res> {
  __$$_InitialSearchAndSelectUsersStateCopyWithImpl(
      _$_InitialSearchAndSelectUsersState _value,
      $Res Function(_$_InitialSearchAndSelectUsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUsers = null,
    Object? suggestedUsers = null,
  }) {
    return _then(_$_InitialSearchAndSelectUsersState(
      null == selectedUsers
          ? _value._selectedUsers
          : selectedUsers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      suggestedUsers: null == suggestedUsers
          ? _value._suggestedUsers
          : suggestedUsers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
    ));
  }
}

/// @nodoc

class _$_InitialSearchAndSelectUsersState
    implements _InitialSearchAndSelectUsersState {
  const _$_InitialSearchAndSelectUsersState(final List<DLSUser> selectedUsers,
      {final List<DLSUser> suggestedUsers = const []})
      : _selectedUsers = selectedUsers,
        _suggestedUsers = suggestedUsers;

  final List<DLSUser> _selectedUsers;
  @override
  List<DLSUser> get selectedUsers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedUsers);
  }

  final List<DLSUser> _suggestedUsers;
  @override
  @JsonKey()
  List<DLSUser> get suggestedUsers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestedUsers);
  }

  @override
  String toString() {
    return 'SearchAndSelectUsersState.initial(selectedUsers: $selectedUsers, suggestedUsers: $suggestedUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialSearchAndSelectUsersState &&
            const DeepCollectionEquality()
                .equals(other._selectedUsers, _selectedUsers) &&
            const DeepCollectionEquality()
                .equals(other._suggestedUsers, _suggestedUsers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedUsers),
      const DeepCollectionEquality().hash(_suggestedUsers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialSearchAndSelectUsersStateCopyWith<
          _$_InitialSearchAndSelectUsersState>
      get copyWith => __$$_InitialSearchAndSelectUsersStateCopyWithImpl<
          _$_InitialSearchAndSelectUsersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)
        initial,
    required TResult Function(List<DLSUser> selectedUsers) loading,
    required TResult Function(
            List<DLSUser> selectedUsers, List<DLSUser> searchResult)
        data,
    required TResult Function(List<DLSUser> selectedUsers, String message)
        failure,
  }) {
    return initial(selectedUsers, suggestedUsers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)?
        initial,
    TResult? Function(List<DLSUser> selectedUsers)? loading,
    TResult? Function(List<DLSUser> selectedUsers, List<DLSUser> searchResult)?
        data,
    TResult? Function(List<DLSUser> selectedUsers, String message)? failure,
  }) {
    return initial?.call(selectedUsers, suggestedUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)?
        initial,
    TResult Function(List<DLSUser> selectedUsers)? loading,
    TResult Function(List<DLSUser> selectedUsers, List<DLSUser> searchResult)?
        data,
    TResult Function(List<DLSUser> selectedUsers, String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(selectedUsers, suggestedUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchAndSelectUsersState value) initial,
    required TResult Function(_LoadingSearchAndSelectUsersState value) loading,
    required TResult Function(_DataSearchAndSelectUsersState value) data,
    required TResult Function(_FailureSearchAndSelectUsersState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAndSelectUsersState value)? initial,
    TResult? Function(_LoadingSearchAndSelectUsersState value)? loading,
    TResult? Function(_DataSearchAndSelectUsersState value)? data,
    TResult? Function(_FailureSearchAndSelectUsersState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAndSelectUsersState value)? initial,
    TResult Function(_LoadingSearchAndSelectUsersState value)? loading,
    TResult Function(_DataSearchAndSelectUsersState value)? data,
    TResult Function(_FailureSearchAndSelectUsersState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearchAndSelectUsersState
    implements SearchAndSelectUsersState {
  const factory _InitialSearchAndSelectUsersState(
          final List<DLSUser> selectedUsers,
          {final List<DLSUser> suggestedUsers}) =
      _$_InitialSearchAndSelectUsersState;

  @override
  List<DLSUser> get selectedUsers;
  List<DLSUser> get suggestedUsers;
  @override
  @JsonKey(ignore: true)
  _$$_InitialSearchAndSelectUsersStateCopyWith<
          _$_InitialSearchAndSelectUsersState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingSearchAndSelectUsersStateCopyWith<$Res>
    implements $SearchAndSelectUsersStateCopyWith<$Res> {
  factory _$$_LoadingSearchAndSelectUsersStateCopyWith(
          _$_LoadingSearchAndSelectUsersState value,
          $Res Function(_$_LoadingSearchAndSelectUsersState) then) =
      __$$_LoadingSearchAndSelectUsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DLSUser> selectedUsers});
}

/// @nodoc
class __$$_LoadingSearchAndSelectUsersStateCopyWithImpl<$Res>
    extends _$SearchAndSelectUsersStateCopyWithImpl<$Res,
        _$_LoadingSearchAndSelectUsersState>
    implements _$$_LoadingSearchAndSelectUsersStateCopyWith<$Res> {
  __$$_LoadingSearchAndSelectUsersStateCopyWithImpl(
      _$_LoadingSearchAndSelectUsersState _value,
      $Res Function(_$_LoadingSearchAndSelectUsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUsers = null,
  }) {
    return _then(_$_LoadingSearchAndSelectUsersState(
      null == selectedUsers
          ? _value._selectedUsers
          : selectedUsers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
    ));
  }
}

/// @nodoc

class _$_LoadingSearchAndSelectUsersState
    implements _LoadingSearchAndSelectUsersState {
  const _$_LoadingSearchAndSelectUsersState(final List<DLSUser> selectedUsers)
      : _selectedUsers = selectedUsers;

  final List<DLSUser> _selectedUsers;
  @override
  List<DLSUser> get selectedUsers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedUsers);
  }

  @override
  String toString() {
    return 'SearchAndSelectUsersState.loading(selectedUsers: $selectedUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadingSearchAndSelectUsersState &&
            const DeepCollectionEquality()
                .equals(other._selectedUsers, _selectedUsers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedUsers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingSearchAndSelectUsersStateCopyWith<
          _$_LoadingSearchAndSelectUsersState>
      get copyWith => __$$_LoadingSearchAndSelectUsersStateCopyWithImpl<
          _$_LoadingSearchAndSelectUsersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)
        initial,
    required TResult Function(List<DLSUser> selectedUsers) loading,
    required TResult Function(
            List<DLSUser> selectedUsers, List<DLSUser> searchResult)
        data,
    required TResult Function(List<DLSUser> selectedUsers, String message)
        failure,
  }) {
    return loading(selectedUsers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)?
        initial,
    TResult? Function(List<DLSUser> selectedUsers)? loading,
    TResult? Function(List<DLSUser> selectedUsers, List<DLSUser> searchResult)?
        data,
    TResult? Function(List<DLSUser> selectedUsers, String message)? failure,
  }) {
    return loading?.call(selectedUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)?
        initial,
    TResult Function(List<DLSUser> selectedUsers)? loading,
    TResult Function(List<DLSUser> selectedUsers, List<DLSUser> searchResult)?
        data,
    TResult Function(List<DLSUser> selectedUsers, String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(selectedUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchAndSelectUsersState value) initial,
    required TResult Function(_LoadingSearchAndSelectUsersState value) loading,
    required TResult Function(_DataSearchAndSelectUsersState value) data,
    required TResult Function(_FailureSearchAndSelectUsersState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAndSelectUsersState value)? initial,
    TResult? Function(_LoadingSearchAndSelectUsersState value)? loading,
    TResult? Function(_DataSearchAndSelectUsersState value)? data,
    TResult? Function(_FailureSearchAndSelectUsersState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAndSelectUsersState value)? initial,
    TResult Function(_LoadingSearchAndSelectUsersState value)? loading,
    TResult Function(_DataSearchAndSelectUsersState value)? data,
    TResult Function(_FailureSearchAndSelectUsersState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSearchAndSelectUsersState
    implements SearchAndSelectUsersState {
  const factory _LoadingSearchAndSelectUsersState(
      final List<DLSUser> selectedUsers) = _$_LoadingSearchAndSelectUsersState;

  @override
  List<DLSUser> get selectedUsers;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingSearchAndSelectUsersStateCopyWith<
          _$_LoadingSearchAndSelectUsersState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataSearchAndSelectUsersStateCopyWith<$Res>
    implements $SearchAndSelectUsersStateCopyWith<$Res> {
  factory _$$_DataSearchAndSelectUsersStateCopyWith(
          _$_DataSearchAndSelectUsersState value,
          $Res Function(_$_DataSearchAndSelectUsersState) then) =
      __$$_DataSearchAndSelectUsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DLSUser> selectedUsers, List<DLSUser> searchResult});
}

/// @nodoc
class __$$_DataSearchAndSelectUsersStateCopyWithImpl<$Res>
    extends _$SearchAndSelectUsersStateCopyWithImpl<$Res,
        _$_DataSearchAndSelectUsersState>
    implements _$$_DataSearchAndSelectUsersStateCopyWith<$Res> {
  __$$_DataSearchAndSelectUsersStateCopyWithImpl(
      _$_DataSearchAndSelectUsersState _value,
      $Res Function(_$_DataSearchAndSelectUsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUsers = null,
    Object? searchResult = null,
  }) {
    return _then(_$_DataSearchAndSelectUsersState(
      null == selectedUsers
          ? _value._selectedUsers
          : selectedUsers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
    ));
  }
}

/// @nodoc

class _$_DataSearchAndSelectUsersState
    implements _DataSearchAndSelectUsersState {
  const _$_DataSearchAndSelectUsersState(
      final List<DLSUser> selectedUsers, final List<DLSUser> searchResult)
      : _selectedUsers = selectedUsers,
        _searchResult = searchResult;

  final List<DLSUser> _selectedUsers;
  @override
  List<DLSUser> get selectedUsers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedUsers);
  }

  final List<DLSUser> _searchResult;
  @override
  List<DLSUser> get searchResult {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'SearchAndSelectUsersState.data(selectedUsers: $selectedUsers, searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSearchAndSelectUsersState &&
            const DeepCollectionEquality()
                .equals(other._selectedUsers, _selectedUsers) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedUsers),
      const DeepCollectionEquality().hash(_searchResult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSearchAndSelectUsersStateCopyWith<_$_DataSearchAndSelectUsersState>
      get copyWith => __$$_DataSearchAndSelectUsersStateCopyWithImpl<
          _$_DataSearchAndSelectUsersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)
        initial,
    required TResult Function(List<DLSUser> selectedUsers) loading,
    required TResult Function(
            List<DLSUser> selectedUsers, List<DLSUser> searchResult)
        data,
    required TResult Function(List<DLSUser> selectedUsers, String message)
        failure,
  }) {
    return data(selectedUsers, searchResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)?
        initial,
    TResult? Function(List<DLSUser> selectedUsers)? loading,
    TResult? Function(List<DLSUser> selectedUsers, List<DLSUser> searchResult)?
        data,
    TResult? Function(List<DLSUser> selectedUsers, String message)? failure,
  }) {
    return data?.call(selectedUsers, searchResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)?
        initial,
    TResult Function(List<DLSUser> selectedUsers)? loading,
    TResult Function(List<DLSUser> selectedUsers, List<DLSUser> searchResult)?
        data,
    TResult Function(List<DLSUser> selectedUsers, String message)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(selectedUsers, searchResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchAndSelectUsersState value) initial,
    required TResult Function(_LoadingSearchAndSelectUsersState value) loading,
    required TResult Function(_DataSearchAndSelectUsersState value) data,
    required TResult Function(_FailureSearchAndSelectUsersState value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAndSelectUsersState value)? initial,
    TResult? Function(_LoadingSearchAndSelectUsersState value)? loading,
    TResult? Function(_DataSearchAndSelectUsersState value)? data,
    TResult? Function(_FailureSearchAndSelectUsersState value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAndSelectUsersState value)? initial,
    TResult Function(_LoadingSearchAndSelectUsersState value)? loading,
    TResult Function(_DataSearchAndSelectUsersState value)? data,
    TResult Function(_FailureSearchAndSelectUsersState value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataSearchAndSelectUsersState
    implements SearchAndSelectUsersState {
  const factory _DataSearchAndSelectUsersState(
          final List<DLSUser> selectedUsers, final List<DLSUser> searchResult) =
      _$_DataSearchAndSelectUsersState;

  @override
  List<DLSUser> get selectedUsers;
  List<DLSUser> get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$_DataSearchAndSelectUsersStateCopyWith<_$_DataSearchAndSelectUsersState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureSearchAndSelectUsersStateCopyWith<$Res>
    implements $SearchAndSelectUsersStateCopyWith<$Res> {
  factory _$$_FailureSearchAndSelectUsersStateCopyWith(
          _$_FailureSearchAndSelectUsersState value,
          $Res Function(_$_FailureSearchAndSelectUsersState) then) =
      __$$_FailureSearchAndSelectUsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DLSUser> selectedUsers, String message});
}

/// @nodoc
class __$$_FailureSearchAndSelectUsersStateCopyWithImpl<$Res>
    extends _$SearchAndSelectUsersStateCopyWithImpl<$Res,
        _$_FailureSearchAndSelectUsersState>
    implements _$$_FailureSearchAndSelectUsersStateCopyWith<$Res> {
  __$$_FailureSearchAndSelectUsersStateCopyWithImpl(
      _$_FailureSearchAndSelectUsersState _value,
      $Res Function(_$_FailureSearchAndSelectUsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedUsers = null,
    Object? message = null,
  }) {
    return _then(_$_FailureSearchAndSelectUsersState(
      null == selectedUsers
          ? _value._selectedUsers
          : selectedUsers // ignore: cast_nullable_to_non_nullable
              as List<DLSUser>,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureSearchAndSelectUsersState
    implements _FailureSearchAndSelectUsersState {
  const _$_FailureSearchAndSelectUsersState(
      final List<DLSUser> selectedUsers, this.message)
      : _selectedUsers = selectedUsers;

  final List<DLSUser> _selectedUsers;
  @override
  List<DLSUser> get selectedUsers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedUsers);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'SearchAndSelectUsersState.failure(selectedUsers: $selectedUsers, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureSearchAndSelectUsersState &&
            const DeepCollectionEquality()
                .equals(other._selectedUsers, _selectedUsers) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_selectedUsers), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureSearchAndSelectUsersStateCopyWith<
          _$_FailureSearchAndSelectUsersState>
      get copyWith => __$$_FailureSearchAndSelectUsersStateCopyWithImpl<
          _$_FailureSearchAndSelectUsersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)
        initial,
    required TResult Function(List<DLSUser> selectedUsers) loading,
    required TResult Function(
            List<DLSUser> selectedUsers, List<DLSUser> searchResult)
        data,
    required TResult Function(List<DLSUser> selectedUsers, String message)
        failure,
  }) {
    return failure(selectedUsers, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)?
        initial,
    TResult? Function(List<DLSUser> selectedUsers)? loading,
    TResult? Function(List<DLSUser> selectedUsers, List<DLSUser> searchResult)?
        data,
    TResult? Function(List<DLSUser> selectedUsers, String message)? failure,
  }) {
    return failure?.call(selectedUsers, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DLSUser> selectedUsers, List<DLSUser> suggestedUsers)?
        initial,
    TResult Function(List<DLSUser> selectedUsers)? loading,
    TResult Function(List<DLSUser> selectedUsers, List<DLSUser> searchResult)?
        data,
    TResult Function(List<DLSUser> selectedUsers, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(selectedUsers, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchAndSelectUsersState value) initial,
    required TResult Function(_LoadingSearchAndSelectUsersState value) loading,
    required TResult Function(_DataSearchAndSelectUsersState value) data,
    required TResult Function(_FailureSearchAndSelectUsersState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAndSelectUsersState value)? initial,
    TResult? Function(_LoadingSearchAndSelectUsersState value)? loading,
    TResult? Function(_DataSearchAndSelectUsersState value)? data,
    TResult? Function(_FailureSearchAndSelectUsersState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAndSelectUsersState value)? initial,
    TResult Function(_LoadingSearchAndSelectUsersState value)? loading,
    TResult Function(_DataSearchAndSelectUsersState value)? data,
    TResult Function(_FailureSearchAndSelectUsersState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureSearchAndSelectUsersState
    implements SearchAndSelectUsersState {
  const factory _FailureSearchAndSelectUsersState(
          final List<DLSUser> selectedUsers, final String message) =
      _$_FailureSearchAndSelectUsersState;

  @override
  List<DLSUser> get selectedUsers;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FailureSearchAndSelectUsersStateCopyWith<
          _$_FailureSearchAndSelectUsersState>
      get copyWith => throw _privateConstructorUsedError;
}
