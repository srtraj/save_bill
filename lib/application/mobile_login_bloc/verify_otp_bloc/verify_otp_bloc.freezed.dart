// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyOtpEvent {
  String? get verificationId => throw _privateConstructorUsedError;
  String? get smsCode => throw _privateConstructorUsedError;
  PhoneAuthCredential? get cred => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? verificationId, String? smsCode, PhoneAuthCredential? cred)
        verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? verificationId, String? smsCode, PhoneAuthCredential? cred)?
        verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? verificationId, String? smsCode, PhoneAuthCredential? cred)?
        verifyOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(verifyOtp value) verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(verifyOtp value)? verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(verifyOtp value)? verifyOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyOtpEventCopyWith<VerifyOtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpEventCopyWith<$Res> {
  factory $VerifyOtpEventCopyWith(
          VerifyOtpEvent value, $Res Function(VerifyOtpEvent) then) =
      _$VerifyOtpEventCopyWithImpl<$Res>;
  $Res call(
      {String? verificationId, String? smsCode, PhoneAuthCredential? cred});
}

/// @nodoc
class _$VerifyOtpEventCopyWithImpl<$Res>
    implements $VerifyOtpEventCopyWith<$Res> {
  _$VerifyOtpEventCopyWithImpl(this._value, this._then);

  final VerifyOtpEvent _value;
  // ignore: unused_field
  final $Res Function(VerifyOtpEvent) _then;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? smsCode = freezed,
    Object? cred = freezed,
  }) {
    return _then(_value.copyWith(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      cred: cred == freezed
          ? _value.cred
          : cred // ignore: cast_nullable_to_non_nullable
              as PhoneAuthCredential?,
    ));
  }
}

/// @nodoc
abstract class _$$verifyOtpCopyWith<$Res>
    implements $VerifyOtpEventCopyWith<$Res> {
  factory _$$verifyOtpCopyWith(
          _$verifyOtp value, $Res Function(_$verifyOtp) then) =
      __$$verifyOtpCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? verificationId, String? smsCode, PhoneAuthCredential? cred});
}

/// @nodoc
class __$$verifyOtpCopyWithImpl<$Res> extends _$VerifyOtpEventCopyWithImpl<$Res>
    implements _$$verifyOtpCopyWith<$Res> {
  __$$verifyOtpCopyWithImpl(
      _$verifyOtp _value, $Res Function(_$verifyOtp) _then)
      : super(_value, (v) => _then(v as _$verifyOtp));

  @override
  _$verifyOtp get _value => super._value as _$verifyOtp;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? smsCode = freezed,
    Object? cred = freezed,
  }) {
    return _then(_$verifyOtp(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      cred: cred == freezed
          ? _value.cred
          : cred // ignore: cast_nullable_to_non_nullable
              as PhoneAuthCredential?,
    ));
  }
}

/// @nodoc

class _$verifyOtp implements verifyOtp {
  const _$verifyOtp({this.verificationId, this.smsCode, this.cred});

  @override
  final String? verificationId;
  @override
  final String? smsCode;
  @override
  final PhoneAuthCredential? cred;

  @override
  String toString() {
    return 'VerifyOtpEvent.verifyOtp(verificationId: $verificationId, smsCode: $smsCode, cred: $cred)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$verifyOtp &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode) &&
            const DeepCollectionEquality().equals(other.cred, cred));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(smsCode),
      const DeepCollectionEquality().hash(cred));

  @JsonKey(ignore: true)
  @override
  _$$verifyOtpCopyWith<_$verifyOtp> get copyWith =>
      __$$verifyOtpCopyWithImpl<_$verifyOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? verificationId, String? smsCode, PhoneAuthCredential? cred)
        verifyOtp,
  }) {
    return verifyOtp(verificationId, smsCode, cred);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? verificationId, String? smsCode, PhoneAuthCredential? cred)?
        verifyOtp,
  }) {
    return verifyOtp?.call(verificationId, smsCode, cred);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? verificationId, String? smsCode, PhoneAuthCredential? cred)?
        verifyOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(verificationId, smsCode, cred);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(verifyOtp value) verifyOtp,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(verifyOtp value)? verifyOtp,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(verifyOtp value)? verifyOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class verifyOtp implements VerifyOtpEvent {
  const factory verifyOtp(
      {final String? verificationId,
      final String? smsCode,
      final PhoneAuthCredential? cred}) = _$verifyOtp;

  @override
  String? get verificationId => throw _privateConstructorUsedError;
  @override
  String? get smsCode => throw _privateConstructorUsedError;
  @override
  PhoneAuthCredential? get cred => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$verifyOtpCopyWith<_$verifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyOtpState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get signInSuccess => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyOtpStateCopyWith<VerifyOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpStateCopyWith<$Res> {
  factory $VerifyOtpStateCopyWith(
          VerifyOtpState value, $Res Function(VerifyOtpState) then) =
      _$VerifyOtpStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool signInSuccess, Failure? error});

  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$VerifyOtpStateCopyWithImpl<$Res>
    implements $VerifyOtpStateCopyWith<$Res> {
  _$VerifyOtpStateCopyWithImpl(this._value, this._then);

  final VerifyOtpState _value;
  // ignore: unused_field
  final $Res Function(VerifyOtpState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? signInSuccess = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInSuccess: signInSuccess == freezed
          ? _value.signInSuccess
          : signInSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_VerifyOtpStateCopyWith<$Res>
    implements $VerifyOtpStateCopyWith<$Res> {
  factory _$$_VerifyOtpStateCopyWith(
          _$_VerifyOtpState value, $Res Function(_$_VerifyOtpState) then) =
      __$$_VerifyOtpStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool signInSuccess, Failure? error});

  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_VerifyOtpStateCopyWithImpl<$Res>
    extends _$VerifyOtpStateCopyWithImpl<$Res>
    implements _$$_VerifyOtpStateCopyWith<$Res> {
  __$$_VerifyOtpStateCopyWithImpl(
      _$_VerifyOtpState _value, $Res Function(_$_VerifyOtpState) _then)
      : super(_value, (v) => _then(v as _$_VerifyOtpState));

  @override
  _$_VerifyOtpState get _value => super._value as _$_VerifyOtpState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? signInSuccess = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_VerifyOtpState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInSuccess: signInSuccess == freezed
          ? _value.signInSuccess
          : signInSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_VerifyOtpState implements _VerifyOtpState {
  const _$_VerifyOtpState(
      {required this.isLoading, required this.signInSuccess, this.error});

  @override
  final bool isLoading;
  @override
  final bool signInSuccess;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'VerifyOtpState(isLoading: $isLoading, signInSuccess: $signInSuccess, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtpState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.signInSuccess, signInSuccess) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(signInSuccess),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_VerifyOtpStateCopyWith<_$_VerifyOtpState> get copyWith =>
      __$$_VerifyOtpStateCopyWithImpl<_$_VerifyOtpState>(this, _$identity);
}

abstract class _VerifyOtpState implements VerifyOtpState {
  const factory _VerifyOtpState(
      {required final bool isLoading,
      required final bool signInSuccess,
      final Failure? error}) = _$_VerifyOtpState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get signInSuccess => throw _privateConstructorUsedError;
  @override
  Failure? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyOtpStateCopyWith<_$_VerifyOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}
