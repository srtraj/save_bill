// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactListState {
  bool get isLoading => throw _privateConstructorUsedError;
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
  $Res call({bool isLoading, List<ContactModel> data, Failure? error});

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
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({bool isLoading, List<ContactModel> data, Failure? error});

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
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ContactListState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      required final List<ContactModel> data,
      this.error})
      : _data = data;

  @override
  final bool isLoading;
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
    return 'ContactListState(isLoading: $isLoading, data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactListState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
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
      required final List<ContactModel> data,
      final Failure? error}) = _$_ContactListState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<ContactModel> get data => throw _privateConstructorUsedError;
  @override
  Failure? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ContactListStateCopyWith<_$_ContactListState> get copyWith =>
      throw _privateConstructorUsedError;
}
