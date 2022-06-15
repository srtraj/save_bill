// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_resend_clock_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpResendClockState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get seconds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpResendClockStateCopyWith<OtpResendClockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpResendClockStateCopyWith<$Res> {
  factory $OtpResendClockStateCopyWith(
          OtpResendClockState value, $Res Function(OtpResendClockState) then) =
      _$OtpResendClockStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, int seconds});
}

/// @nodoc
class _$OtpResendClockStateCopyWithImpl<$Res>
    implements $OtpResendClockStateCopyWith<$Res> {
  _$OtpResendClockStateCopyWithImpl(this._value, this._then);

  final OtpResendClockState _value;
  // ignore: unused_field
  final $Res Function(OtpResendClockState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? seconds = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      seconds: seconds == freezed
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_OtpResendClockStateCopyWith<$Res>
    implements $OtpResendClockStateCopyWith<$Res> {
  factory _$$_OtpResendClockStateCopyWith(_$_OtpResendClockState value,
          $Res Function(_$_OtpResendClockState) then) =
      __$$_OtpResendClockStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, int seconds});
}

/// @nodoc
class __$$_OtpResendClockStateCopyWithImpl<$Res>
    extends _$OtpResendClockStateCopyWithImpl<$Res>
    implements _$$_OtpResendClockStateCopyWith<$Res> {
  __$$_OtpResendClockStateCopyWithImpl(_$_OtpResendClockState _value,
      $Res Function(_$_OtpResendClockState) _then)
      : super(_value, (v) => _then(v as _$_OtpResendClockState));

  @override
  _$_OtpResendClockState get _value => super._value as _$_OtpResendClockState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? seconds = freezed,
  }) {
    return _then(_$_OtpResendClockState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      seconds: seconds == freezed
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OtpResendClockState implements _OtpResendClockState {
  const _$_OtpResendClockState(
      {required this.isLoading, required this.seconds});

  @override
  final bool isLoading;
  @override
  final int seconds;

  @override
  String toString() {
    return 'OtpResendClockState(isLoading: $isLoading, seconds: $seconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpResendClockState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.seconds, seconds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(seconds));

  @JsonKey(ignore: true)
  @override
  _$$_OtpResendClockStateCopyWith<_$_OtpResendClockState> get copyWith =>
      __$$_OtpResendClockStateCopyWithImpl<_$_OtpResendClockState>(
          this, _$identity);
}

abstract class _OtpResendClockState implements OtpResendClockState {
  const factory _OtpResendClockState(
      {required final bool isLoading,
      required final int seconds}) = _$_OtpResendClockState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  int get seconds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OtpResendClockStateCopyWith<_$_OtpResendClockState> get copyWith =>
      throw _privateConstructorUsedError;
}
