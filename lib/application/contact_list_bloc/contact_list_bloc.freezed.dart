// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadContact,
    required TResult Function(String searchKey) filterContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadContact,
    TResult Function(String searchKey)? filterContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadContact,
    TResult Function(String searchKey)? filterContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadConctact value) loadContact,
    required TResult Function(_FilterConctact value) filterContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadConctact value)? loadContact,
    TResult Function(_FilterConctact value)? filterContact,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadConctact value)? loadContact,
    TResult Function(_FilterConctact value)? filterContact,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListEventCopyWith<$Res> {
  factory $ContactListEventCopyWith(
          ContactListEvent value, $Res Function(ContactListEvent) then) =
      _$ContactListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactListEventCopyWithImpl<$Res>
    implements $ContactListEventCopyWith<$Res> {
  _$ContactListEventCopyWithImpl(this._value, this._then);

  final ContactListEvent _value;
  // ignore: unused_field
  final $Res Function(ContactListEvent) _then;
}

/// @nodoc
abstract class _$$_LoadConctactCopyWith<$Res> {
  factory _$$_LoadConctactCopyWith(
          _$_LoadConctact value, $Res Function(_$_LoadConctact) then) =
      __$$_LoadConctactCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadConctactCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res>
    implements _$$_LoadConctactCopyWith<$Res> {
  __$$_LoadConctactCopyWithImpl(
      _$_LoadConctact _value, $Res Function(_$_LoadConctact) _then)
      : super(_value, (v) => _then(v as _$_LoadConctact));

  @override
  _$_LoadConctact get _value => super._value as _$_LoadConctact;
}

/// @nodoc

class _$_LoadConctact implements _LoadConctact {
  const _$_LoadConctact();

  @override
  String toString() {
    return 'ContactListEvent.loadContact()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadConctact);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadContact,
    required TResult Function(String searchKey) filterContact,
  }) {
    return loadContact();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadContact,
    TResult Function(String searchKey)? filterContact,
  }) {
    return loadContact?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadContact,
    TResult Function(String searchKey)? filterContact,
    required TResult orElse(),
  }) {
    if (loadContact != null) {
      return loadContact();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadConctact value) loadContact,
    required TResult Function(_FilterConctact value) filterContact,
  }) {
    return loadContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadConctact value)? loadContact,
    TResult Function(_FilterConctact value)? filterContact,
  }) {
    return loadContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadConctact value)? loadContact,
    TResult Function(_FilterConctact value)? filterContact,
    required TResult orElse(),
  }) {
    if (loadContact != null) {
      return loadContact(this);
    }
    return orElse();
  }
}

abstract class _LoadConctact implements ContactListEvent {
  const factory _LoadConctact() = _$_LoadConctact;
}

/// @nodoc
abstract class _$$_FilterConctactCopyWith<$Res> {
  factory _$$_FilterConctactCopyWith(
          _$_FilterConctact value, $Res Function(_$_FilterConctact) then) =
      __$$_FilterConctactCopyWithImpl<$Res>;
  $Res call({String searchKey});
}

/// @nodoc
class __$$_FilterConctactCopyWithImpl<$Res>
    extends _$ContactListEventCopyWithImpl<$Res>
    implements _$$_FilterConctactCopyWith<$Res> {
  __$$_FilterConctactCopyWithImpl(
      _$_FilterConctact _value, $Res Function(_$_FilterConctact) _then)
      : super(_value, (v) => _then(v as _$_FilterConctact));

  @override
  _$_FilterConctact get _value => super._value as _$_FilterConctact;

  @override
  $Res call({
    Object? searchKey = freezed,
  }) {
    return _then(_$_FilterConctact(
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FilterConctact implements _FilterConctact {
  const _$_FilterConctact({required this.searchKey});

  @override
  final String searchKey;

  @override
  String toString() {
    return 'ContactListEvent.filterContact(searchKey: $searchKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterConctact &&
            const DeepCollectionEquality().equals(other.searchKey, searchKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(searchKey));

  @JsonKey(ignore: true)
  @override
  _$$_FilterConctactCopyWith<_$_FilterConctact> get copyWith =>
      __$$_FilterConctactCopyWithImpl<_$_FilterConctact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadContact,
    required TResult Function(String searchKey) filterContact,
  }) {
    return filterContact(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadContact,
    TResult Function(String searchKey)? filterContact,
  }) {
    return filterContact?.call(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadContact,
    TResult Function(String searchKey)? filterContact,
    required TResult orElse(),
  }) {
    if (filterContact != null) {
      return filterContact(searchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadConctact value) loadContact,
    required TResult Function(_FilterConctact value) filterContact,
  }) {
    return filterContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadConctact value)? loadContact,
    TResult Function(_FilterConctact value)? filterContact,
  }) {
    return filterContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadConctact value)? loadContact,
    TResult Function(_FilterConctact value)? filterContact,
    required TResult orElse(),
  }) {
    if (filterContact != null) {
      return filterContact(this);
    }
    return orElse();
  }
}

abstract class _FilterConctact implements ContactListEvent {
  const factory _FilterConctact({required final String searchKey}) =
      _$_FilterConctact;

  String get searchKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FilterConctactCopyWith<_$_FilterConctact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ContactModel>? get originalData => throw _privateConstructorUsedError;
  List<ContactModel> get data => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactListStateCopyWith<ContactListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactListStateCopyWith<$Res> {
  factory $ContactListStateCopyWith(
          ContactListState value, $Res Function(ContactListState) then) =
      _$ContactListStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<ContactModel>? originalData,
      List<ContactModel> data,
      Failure? error});

  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$ContactListStateCopyWithImpl<$Res>
    implements $ContactListStateCopyWith<$Res> {
  _$ContactListStateCopyWithImpl(this._value, this._then);

  final ContactListState _value;
  // ignore: unused_field
  final $Res Function(ContactListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? originalData = freezed,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      originalData: originalData == freezed
          ? _value.originalData
          : originalData // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
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
abstract class _$$_ContactListStateCopyWith<$Res>
    implements $ContactListStateCopyWith<$Res> {
  factory _$$_ContactListStateCopyWith(
          _$_ContactListState value, $Res Function(_$_ContactListState) then) =
      __$$_ContactListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<ContactModel>? originalData,
      List<ContactModel> data,
      Failure? error});

  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_ContactListStateCopyWithImpl<$Res>
    extends _$ContactListStateCopyWithImpl<$Res>
    implements _$$_ContactListStateCopyWith<$Res> {
  __$$_ContactListStateCopyWithImpl(
      _$_ContactListState _value, $Res Function(_$_ContactListState) _then)
      : super(_value, (v) => _then(v as _$_ContactListState));

  @override
  _$_ContactListState get _value => super._value as _$_ContactListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? originalData = freezed,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ContactListState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      originalData: originalData == freezed
          ? _value._originalData
          : originalData // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_ContactListState implements _ContactListState {
  const _$_ContactListState(
      {required this.isLoading,
      final List<ContactModel>? originalData,
      required final List<ContactModel> data,
      this.error})
      : _originalData = originalData,
        _data = data;

  @override
  final bool isLoading;
  final List<ContactModel>? _originalData;
  @override
  List<ContactModel>? get originalData {
    final value = _originalData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContactModel> _data;
  @override
  List<ContactModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Failure? error;

  @override
  String toString() {
    return 'ContactListState(isLoading: $isLoading, originalData: $originalData, data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._originalData, _originalData) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_originalData),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ContactListStateCopyWith<_$_ContactListState> get copyWith =>
      __$$_ContactListStateCopyWithImpl<_$_ContactListState>(this, _$identity);
}

abstract class _ContactListState implements ContactListState {
  const factory _ContactListState(
      {required final bool isLoading,
      final List<ContactModel>? originalData,
      required final List<ContactModel> data,
      final Failure? error}) = _$_ContactListState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<ContactModel>? get originalData => throw _privateConstructorUsedError;
  @override
  List<ContactModel> get data => throw _privateConstructorUsedError;
  @override
  Failure? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ContactListStateCopyWith<_$_ContactListState> get copyWith =>
      throw _privateConstructorUsedError;
}
