// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_upload_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileUploadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() picProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? picProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? picProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_picProfile value) picProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUploadEventCopyWith<$Res> {
  factory $ProfileUploadEventCopyWith(
          ProfileUploadEvent value, $Res Function(ProfileUploadEvent) then) =
      _$ProfileUploadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileUploadEventCopyWithImpl<$Res>
    implements $ProfileUploadEventCopyWith<$Res> {
  _$ProfileUploadEventCopyWithImpl(this._value, this._then);

  final ProfileUploadEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileUploadEvent) _then;
}

/// @nodoc
abstract class _$$_picProfileCopyWith<$Res> {
  factory _$$_picProfileCopyWith(
          _$_picProfile value, $Res Function(_$_picProfile) then) =
      __$$_picProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_picProfileCopyWithImpl<$Res>
    extends _$ProfileUploadEventCopyWithImpl<$Res>
    implements _$$_picProfileCopyWith<$Res> {
  __$$_picProfileCopyWithImpl(
      _$_picProfile _value, $Res Function(_$_picProfile) _then)
      : super(_value, (v) => _then(v as _$_picProfile));

  @override
  _$_picProfile get _value => super._value as _$_picProfile;
}

/// @nodoc

class _$_picProfile implements _picProfile {
  const _$_picProfile();

  @override
  String toString() {
    return 'ProfileUploadEvent.picProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_picProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() picProfile,
  }) {
    return picProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? picProfile,
  }) {
    return picProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? picProfile,
    required TResult orElse(),
  }) {
    if (picProfile != null) {
      return picProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_picProfile value) picProfile,
  }) {
    return picProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
  }) {
    return picProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
    required TResult orElse(),
  }) {
    if (picProfile != null) {
      return picProfile(this);
    }
    return orElse();
  }
}

abstract class _picProfile implements ProfileUploadEvent {
  const factory _picProfile() = _$_picProfile;
}

/// @nodoc
mixin _$ProfileUploadState {
  bool get isLoading => throw _privateConstructorUsedError;
  File? get data => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileUploadStateCopyWith<ProfileUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUploadStateCopyWith<$Res> {
  factory $ProfileUploadStateCopyWith(
          ProfileUploadState value, $Res Function(ProfileUploadState) then) =
      _$ProfileUploadStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, File? data, Failure? error});

  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$ProfileUploadStateCopyWithImpl<$Res>
    implements $ProfileUploadStateCopyWith<$Res> {
  _$ProfileUploadStateCopyWithImpl(this._value, this._then);

  final ProfileUploadState _value;
  // ignore: unused_field
  final $Res Function(ProfileUploadState) _then;

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
              as File?,
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
abstract class _$$_ProfileUploadStateCopyWith<$Res>
    implements $ProfileUploadStateCopyWith<$Res> {
  factory _$$_ProfileUploadStateCopyWith(_$_ProfileUploadState value,
          $Res Function(_$_ProfileUploadState) then) =
      __$$_ProfileUploadStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, File? data, Failure? error});

  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_ProfileUploadStateCopyWithImpl<$Res>
    extends _$ProfileUploadStateCopyWithImpl<$Res>
    implements _$$_ProfileUploadStateCopyWith<$Res> {
  __$$_ProfileUploadStateCopyWithImpl(
      _$_ProfileUploadState _value, $Res Function(_$_ProfileUploadState) _then)
      : super(_value, (v) => _then(v as _$_ProfileUploadState));

  @override
  _$_ProfileUploadState get _value => super._value as _$_ProfileUploadState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ProfileUploadState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as File?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_ProfileUploadState implements _ProfileUploadState {
  const _$_ProfileUploadState({required this.isLoading, this.data, this.error});

  @override
  final bool isLoading;
  @override
  final File? data;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'ProfileUploadState(isLoading: $isLoading, data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileUploadState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileUploadStateCopyWith<_$_ProfileUploadState> get copyWith =>
      __$$_ProfileUploadStateCopyWithImpl<_$_ProfileUploadState>(
          this, _$identity);
}

abstract class _ProfileUploadState implements ProfileUploadState {
  const factory _ProfileUploadState(
      {required final bool isLoading,
      final File? data,
      final Failure? error}) = _$_ProfileUploadState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  File? get data => throw _privateConstructorUsedError;
  @override
  Failure? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileUploadStateCopyWith<_$_ProfileUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}
