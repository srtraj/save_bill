// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) loadUser,
    required TResult Function(String searchKey) filterUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? loadUser,
    TResult Function(String searchKey)? filterUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? loadUser,
    TResult Function(String searchKey)? filterUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_FilterUser value) filterUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_FilterUser value)? filterUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_FilterUser value)? filterUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListEventCopyWith<$Res> {
  factory $UserListEventCopyWith(
          UserListEvent value, $Res Function(UserListEvent) then) =
      _$UserListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserListEventCopyWithImpl<$Res>
    implements $UserListEventCopyWith<$Res> {
  _$UserListEventCopyWithImpl(this._value, this._then);

  final UserListEvent _value;
  // ignore: unused_field
  final $Res Function(UserListEvent) _then;
}

/// @nodoc
abstract class _$$_LoadUserCopyWith<$Res> {
  factory _$$_LoadUserCopyWith(
          _$_LoadUser value, $Res Function(_$_LoadUser) then) =
      __$$_LoadUserCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_LoadUserCopyWithImpl<$Res> extends _$UserListEventCopyWithImpl<$Res>
    implements _$$_LoadUserCopyWith<$Res> {
  __$$_LoadUserCopyWithImpl(
      _$_LoadUser _value, $Res Function(_$_LoadUser) _then)
      : super(_value, (v) => _then(v as _$_LoadUser));

  @override
  _$_LoadUser get _value => super._value as _$_LoadUser;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_LoadUser(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadUser implements _LoadUser {
  const _$_LoadUser({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'UserListEvent.loadUser(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadUser &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_LoadUserCopyWith<_$_LoadUser> get copyWith =>
      __$$_LoadUserCopyWithImpl<_$_LoadUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) loadUser,
    required TResult Function(String searchKey) filterUser,
  }) {
    return loadUser(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? loadUser,
    TResult Function(String searchKey)? filterUser,
  }) {
    return loadUser?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? loadUser,
    TResult Function(String searchKey)? filterUser,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_FilterUser value) filterUser,
  }) {
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_FilterUser value)? filterUser,
  }) {
    return loadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_FilterUser value)? filterUser,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class _LoadUser implements UserListEvent {
  const factory _LoadUser({required final String phoneNumber}) = _$_LoadUser;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadUserCopyWith<_$_LoadUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilterUserCopyWith<$Res> {
  factory _$$_FilterUserCopyWith(
          _$_FilterUser value, $Res Function(_$_FilterUser) then) =
      __$$_FilterUserCopyWithImpl<$Res>;
  $Res call({String searchKey});
}

/// @nodoc
class __$$_FilterUserCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res>
    implements _$$_FilterUserCopyWith<$Res> {
  __$$_FilterUserCopyWithImpl(
      _$_FilterUser _value, $Res Function(_$_FilterUser) _then)
      : super(_value, (v) => _then(v as _$_FilterUser));

  @override
  _$_FilterUser get _value => super._value as _$_FilterUser;

  @override
  $Res call({
    Object? searchKey = freezed,
  }) {
    return _then(_$_FilterUser(
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FilterUser implements _FilterUser {
  const _$_FilterUser({required this.searchKey});

  @override
  final String searchKey;

  @override
  String toString() {
    return 'UserListEvent.filterUser(searchKey: $searchKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterUser &&
            const DeepCollectionEquality().equals(other.searchKey, searchKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(searchKey));

  @JsonKey(ignore: true)
  @override
  _$$_FilterUserCopyWith<_$_FilterUser> get copyWith =>
      __$$_FilterUserCopyWithImpl<_$_FilterUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) loadUser,
    required TResult Function(String searchKey) filterUser,
  }) {
    return filterUser(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? loadUser,
    TResult Function(String searchKey)? filterUser,
  }) {
    return filterUser?.call(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? loadUser,
    TResult Function(String searchKey)? filterUser,
    required TResult orElse(),
  }) {
    if (filterUser != null) {
      return filterUser(searchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_FilterUser value) filterUser,
  }) {
    return filterUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_FilterUser value)? filterUser,
  }) {
    return filterUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_FilterUser value)? filterUser,
    required TResult orElse(),
  }) {
    if (filterUser != null) {
      return filterUser(this);
    }
    return orElse();
  }
}

abstract class _FilterUser implements UserListEvent {
  const factory _FilterUser({required final String searchKey}) = _$_FilterUser;

  String get searchKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FilterUserCopyWith<_$_FilterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<UserModel>? get originalUserData => throw _privateConstructorUsedError;
  List<UserModel>? get data => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListStateCopyWith<UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<UserModel>? originalUserData,
      List<UserModel>? data,
      Failure? error});

  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  final UserListState _value;
  // ignore: unused_field
  final $Res Function(UserListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? originalUserData = freezed,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      originalUserData: originalUserData == freezed
          ? _value.originalUserData
          : originalUserData // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  $FailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserListStateCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$$_UserListStateCopyWith(
          _$_UserListState value, $Res Function(_$_UserListState) then) =
      __$$_UserListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<UserModel>? originalUserData,
      List<UserModel>? data,
      Failure? error});

  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_UserListStateCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res>
    implements _$$_UserListStateCopyWith<$Res> {
  __$$_UserListStateCopyWithImpl(
      _$_UserListState _value, $Res Function(_$_UserListState) _then)
      : super(_value, (v) => _then(v as _$_UserListState));

  @override
  _$_UserListState get _value => super._value as _$_UserListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? originalUserData = freezed,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_UserListState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      originalUserData: originalUserData == freezed
          ? _value._originalUserData
          : originalUserData // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_UserListState implements _UserListState {
  const _$_UserListState(
      {required this.isLoading,
      final List<UserModel>? originalUserData,
      final List<UserModel>? data,
      this.error})
      : _originalUserData = originalUserData,
        _data = data;

  @override
  final bool isLoading;
  final List<UserModel>? _originalUserData;
  @override
  List<UserModel>? get originalUserData {
    final value = _originalUserData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserModel>? _data;
  @override
  List<UserModel>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Failure? error;

  @override
  String toString() {
    return 'UserListState(isLoading: $isLoading, originalUserData: $originalUserData, data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserListState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._originalUserData, _originalUserData) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_originalUserData),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_UserListStateCopyWith<_$_UserListState> get copyWith =>
      __$$_UserListStateCopyWithImpl<_$_UserListState>(this, _$identity);
}

abstract class _UserListState implements UserListState {
  const factory _UserListState(
      {required final bool isLoading,
      final List<UserModel>? originalUserData,
      final List<UserModel>? data,
      final Failure? error}) = _$_UserListState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<UserModel>? get originalUserData => throw _privateConstructorUsedError;
  @override
  List<UserModel>? get data => throw _privateConstructorUsedError;
  @override
  Failure? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserListStateCopyWith<_$_UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}
