// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_phone_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyPhoneEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String phoneNumber, Duration duration)
        verifyPhone,
    required TResult Function(PhoneAuthCredential authCredential)
        verificationCompleted,
    required TResult Function(Failure error) verificationFailed,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String timeout) codeAutoRetrievalTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhone value) verifyPhone,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneEventCopyWith<$Res> {
  factory $VerifyPhoneEventCopyWith(
          VerifyPhoneEvent value, $Res Function(VerifyPhoneEvent) then) =
      _$VerifyPhoneEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyPhoneEventCopyWithImpl<$Res>
    implements $VerifyPhoneEventCopyWith<$Res> {
  _$VerifyPhoneEventCopyWithImpl(this._value, this._then);

  final VerifyPhoneEvent _value;
  // ignore: unused_field
  final $Res Function(VerifyPhoneEvent) _then;
}

/// @nodoc
abstract class _$$VerifyPhoneCopyWith<$Res> {
  factory _$$VerifyPhoneCopyWith(
          _$VerifyPhone value, $Res Function(_$VerifyPhone) then) =
      __$$VerifyPhoneCopyWithImpl<$Res>;
  $Res call({BuildContext context, String phoneNumber, Duration duration});
}

/// @nodoc
class __$$VerifyPhoneCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res>
    implements _$$VerifyPhoneCopyWith<$Res> {
  __$$VerifyPhoneCopyWithImpl(
      _$VerifyPhone _value, $Res Function(_$VerifyPhone) _then)
      : super(_value, (v) => _then(v as _$VerifyPhone));

  @override
  _$VerifyPhone get _value => super._value as _$VerifyPhone;

  @override
  $Res call({
    Object? context = freezed,
    Object? phoneNumber = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$VerifyPhone(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$VerifyPhone implements VerifyPhone {
  const _$VerifyPhone(
      {required this.context,
      required this.phoneNumber,
      required this.duration});

  @override
  final BuildContext context;
  @override
  final String phoneNumber;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'VerifyPhoneEvent.verifyPhone(context: $context, phoneNumber: $phoneNumber, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPhone &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$VerifyPhoneCopyWith<_$VerifyPhone> get copyWith =>
      __$$VerifyPhoneCopyWithImpl<_$VerifyPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String phoneNumber, Duration duration)
        verifyPhone,
    required TResult Function(PhoneAuthCredential authCredential)
        verificationCompleted,
    required TResult Function(Failure error) verificationFailed,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String timeout) codeAutoRetrievalTimeout,
  }) {
    return verifyPhone(context, phoneNumber, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
  }) {
    return verifyPhone?.call(context, phoneNumber, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verifyPhone != null) {
      return verifyPhone(context, phoneNumber, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhone value) verifyPhone,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return verifyPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
  }) {
    return verifyPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verifyPhone != null) {
      return verifyPhone(this);
    }
    return orElse();
  }
}

abstract class VerifyPhone implements VerifyPhoneEvent {
  const factory VerifyPhone(
      {required final BuildContext context,
      required final String phoneNumber,
      required final Duration duration}) = _$VerifyPhone;

  BuildContext get context => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VerifyPhoneCopyWith<_$VerifyPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerificationCompletedCopyWith<$Res> {
  factory _$$VerificationCompletedCopyWith(_$VerificationCompleted value,
          $Res Function(_$VerificationCompleted) then) =
      __$$VerificationCompletedCopyWithImpl<$Res>;
  $Res call({PhoneAuthCredential authCredential});
}

/// @nodoc
class __$$VerificationCompletedCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res>
    implements _$$VerificationCompletedCopyWith<$Res> {
  __$$VerificationCompletedCopyWithImpl(_$VerificationCompleted _value,
      $Res Function(_$VerificationCompleted) _then)
      : super(_value, (v) => _then(v as _$VerificationCompleted));

  @override
  _$VerificationCompleted get _value => super._value as _$VerificationCompleted;

  @override
  $Res call({
    Object? authCredential = freezed,
  }) {
    return _then(_$VerificationCompleted(
      authCredential: authCredential == freezed
          ? _value.authCredential
          : authCredential // ignore: cast_nullable_to_non_nullable
              as PhoneAuthCredential,
    ));
  }
}

/// @nodoc

class _$VerificationCompleted implements VerificationCompleted {
  const _$VerificationCompleted({required this.authCredential});

  @override
  final PhoneAuthCredential authCredential;

  @override
  String toString() {
    return 'VerifyPhoneEvent.verificationCompleted(authCredential: $authCredential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationCompleted &&
            const DeepCollectionEquality()
                .equals(other.authCredential, authCredential));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authCredential));

  @JsonKey(ignore: true)
  @override
  _$$VerificationCompletedCopyWith<_$VerificationCompleted> get copyWith =>
      __$$VerificationCompletedCopyWithImpl<_$VerificationCompleted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String phoneNumber, Duration duration)
        verifyPhone,
    required TResult Function(PhoneAuthCredential authCredential)
        verificationCompleted,
    required TResult Function(Failure error) verificationFailed,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String timeout) codeAutoRetrievalTimeout,
  }) {
    return verificationCompleted(authCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
  }) {
    return verificationCompleted?.call(authCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verificationCompleted != null) {
      return verificationCompleted(authCredential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhone value) verifyPhone,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return verificationCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
  }) {
    return verificationCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verificationCompleted != null) {
      return verificationCompleted(this);
    }
    return orElse();
  }
}

abstract class VerificationCompleted implements VerifyPhoneEvent {
  const factory VerificationCompleted(
          {required final PhoneAuthCredential authCredential}) =
      _$VerificationCompleted;

  PhoneAuthCredential get authCredential => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VerificationCompletedCopyWith<_$VerificationCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerificationFailedCopyWith<$Res> {
  factory _$$VerificationFailedCopyWith(_$VerificationFailed value,
          $Res Function(_$VerificationFailed) then) =
      __$$VerificationFailedCopyWithImpl<$Res>;
  $Res call({Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$VerificationFailedCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res>
    implements _$$VerificationFailedCopyWith<$Res> {
  __$$VerificationFailedCopyWithImpl(
      _$VerificationFailed _value, $Res Function(_$VerificationFailed) _then)
      : super(_value, (v) => _then(v as _$VerificationFailed));

  @override
  _$VerificationFailed get _value => super._value as _$VerificationFailed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$VerificationFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get error {
    return $FailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$VerificationFailed implements VerificationFailed {
  const _$VerificationFailed({required this.error});

  @override
  final Failure error;

  @override
  String toString() {
    return 'VerifyPhoneEvent.verificationFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationFailed &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$VerificationFailedCopyWith<_$VerificationFailed> get copyWith =>
      __$$VerificationFailedCopyWithImpl<_$VerificationFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String phoneNumber, Duration duration)
        verifyPhone,
    required TResult Function(PhoneAuthCredential authCredential)
        verificationCompleted,
    required TResult Function(Failure error) verificationFailed,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String timeout) codeAutoRetrievalTimeout,
  }) {
    return verificationFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
  }) {
    return verificationFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhone value) verifyPhone,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return verificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
  }) {
    return verificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(this);
    }
    return orElse();
  }
}

abstract class VerificationFailed implements VerifyPhoneEvent {
  const factory VerificationFailed({required final Failure error}) =
      _$VerificationFailed;

  Failure get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VerificationFailedCopyWith<_$VerificationFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CodeSentCopyWith<$Res> {
  factory _$$CodeSentCopyWith(
          _$CodeSent value, $Res Function(_$CodeSent) then) =
      __$$CodeSentCopyWithImpl<$Res>;
  $Res call({String verificationId, int? forceResendingToken});
}

/// @nodoc
class __$$CodeSentCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res>
    implements _$$CodeSentCopyWith<$Res> {
  __$$CodeSentCopyWithImpl(_$CodeSent _value, $Res Function(_$CodeSent) _then)
      : super(_value, (v) => _then(v as _$CodeSent));

  @override
  _$CodeSent get _value => super._value as _$CodeSent;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? forceResendingToken = freezed,
  }) {
    return _then(_$CodeSent(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      forceResendingToken: forceResendingToken == freezed
          ? _value.forceResendingToken
          : forceResendingToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CodeSent implements CodeSent {
  const _$CodeSent({required this.verificationId, this.forceResendingToken});

  @override
  final String verificationId;
  @override
  final int? forceResendingToken;

  @override
  String toString() {
    return 'VerifyPhoneEvent.codeSent(verificationId: $verificationId, forceResendingToken: $forceResendingToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSent &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality()
                .equals(other.forceResendingToken, forceResendingToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(forceResendingToken));

  @JsonKey(ignore: true)
  @override
  _$$CodeSentCopyWith<_$CodeSent> get copyWith =>
      __$$CodeSentCopyWithImpl<_$CodeSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String phoneNumber, Duration duration)
        verifyPhone,
    required TResult Function(PhoneAuthCredential authCredential)
        verificationCompleted,
    required TResult Function(Failure error) verificationFailed,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String timeout) codeAutoRetrievalTimeout,
  }) {
    return codeSent(verificationId, forceResendingToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
  }) {
    return codeSent?.call(verificationId, forceResendingToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(verificationId, forceResendingToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhone value) verifyPhone,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class CodeSent implements VerifyPhoneEvent {
  const factory CodeSent(
      {required final String verificationId,
      final int? forceResendingToken}) = _$CodeSent;

  String get verificationId => throw _privateConstructorUsedError;
  int? get forceResendingToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CodeSentCopyWith<_$CodeSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CodeAutoRetrievalTimeoutCopyWith<$Res> {
  factory _$$CodeAutoRetrievalTimeoutCopyWith(_$CodeAutoRetrievalTimeout value,
          $Res Function(_$CodeAutoRetrievalTimeout) then) =
      __$$CodeAutoRetrievalTimeoutCopyWithImpl<$Res>;
  $Res call({String timeout});
}

/// @nodoc
class __$$CodeAutoRetrievalTimeoutCopyWithImpl<$Res>
    extends _$VerifyPhoneEventCopyWithImpl<$Res>
    implements _$$CodeAutoRetrievalTimeoutCopyWith<$Res> {
  __$$CodeAutoRetrievalTimeoutCopyWithImpl(_$CodeAutoRetrievalTimeout _value,
      $Res Function(_$CodeAutoRetrievalTimeout) _then)
      : super(_value, (v) => _then(v as _$CodeAutoRetrievalTimeout));

  @override
  _$CodeAutoRetrievalTimeout get _value =>
      super._value as _$CodeAutoRetrievalTimeout;

  @override
  $Res call({
    Object? timeout = freezed,
  }) {
    return _then(_$CodeAutoRetrievalTimeout(
      timeout: timeout == freezed
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CodeAutoRetrievalTimeout implements CodeAutoRetrievalTimeout {
  const _$CodeAutoRetrievalTimeout({required this.timeout});

  @override
  final String timeout;

  @override
  String toString() {
    return 'VerifyPhoneEvent.codeAutoRetrievalTimeout(timeout: $timeout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeAutoRetrievalTimeout &&
            const DeepCollectionEquality().equals(other.timeout, timeout));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(timeout));

  @JsonKey(ignore: true)
  @override
  _$$CodeAutoRetrievalTimeoutCopyWith<_$CodeAutoRetrievalTimeout>
      get copyWith =>
          __$$CodeAutoRetrievalTimeoutCopyWithImpl<_$CodeAutoRetrievalTimeout>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String phoneNumber, Duration duration)
        verifyPhone,
    required TResult Function(PhoneAuthCredential authCredential)
        verificationCompleted,
    required TResult Function(Failure error) verificationFailed,
    required TResult Function(String verificationId, int? forceResendingToken)
        codeSent,
    required TResult Function(String timeout) codeAutoRetrievalTimeout,
  }) {
    return codeAutoRetrievalTimeout(timeout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
  }) {
    return codeAutoRetrievalTimeout?.call(timeout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, String phoneNumber, Duration duration)?
        verifyPhone,
    TResult Function(PhoneAuthCredential authCredential)? verificationCompleted,
    TResult Function(Failure error)? verificationFailed,
    TResult Function(String verificationId, int? forceResendingToken)? codeSent,
    TResult Function(String timeout)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (codeAutoRetrievalTimeout != null) {
      return codeAutoRetrievalTimeout(timeout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerifyPhone value) verifyPhone,
    required TResult Function(VerificationCompleted value)
        verificationCompleted,
    required TResult Function(VerificationFailed value) verificationFailed,
    required TResult Function(CodeSent value) codeSent,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
  }) {
    return codeAutoRetrievalTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
  }) {
    return codeAutoRetrievalTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerifyPhone value)? verifyPhone,
    TResult Function(VerificationCompleted value)? verificationCompleted,
    TResult Function(VerificationFailed value)? verificationFailed,
    TResult Function(CodeSent value)? codeSent,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    required TResult orElse(),
  }) {
    if (codeAutoRetrievalTimeout != null) {
      return codeAutoRetrievalTimeout(this);
    }
    return orElse();
  }
}

abstract class CodeAutoRetrievalTimeout implements VerifyPhoneEvent {
  const factory CodeAutoRetrievalTimeout({required final String timeout}) =
      _$CodeAutoRetrievalTimeout;

  String get timeout => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CodeAutoRetrievalTimeoutCopyWith<_$CodeAutoRetrievalTimeout>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyPhoneState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isCodesent => throw _privateConstructorUsedError;
  String? get verId => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  PhoneAuthCredential? get authCredential => throw _privateConstructorUsedError;
  bool get isResend => throw _privateConstructorUsedError;
  int? get resendToken => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyPhoneStateCopyWith<VerifyPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneStateCopyWith<$Res> {
  factory $VerifyPhoneStateCopyWith(
          VerifyPhoneState value, $Res Function(VerifyPhoneState) then) =
      _$VerifyPhoneStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isCodesent,
      String? verId,
      String? phone,
      PhoneAuthCredential? authCredential,
      bool isResend,
      int? resendToken,
      Failure? error});

  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$VerifyPhoneStateCopyWithImpl<$Res>
    implements $VerifyPhoneStateCopyWith<$Res> {
  _$VerifyPhoneStateCopyWithImpl(this._value, this._then);

  final VerifyPhoneState _value;
  // ignore: unused_field
  final $Res Function(VerifyPhoneState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isCodesent = freezed,
    Object? verId = freezed,
    Object? phone = freezed,
    Object? authCredential = freezed,
    Object? isResend = freezed,
    Object? resendToken = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCodesent: isCodesent == freezed
          ? _value.isCodesent
          : isCodesent // ignore: cast_nullable_to_non_nullable
              as bool,
      verId: verId == freezed
          ? _value.verId
          : verId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      authCredential: authCredential == freezed
          ? _value.authCredential
          : authCredential // ignore: cast_nullable_to_non_nullable
              as PhoneAuthCredential?,
      isResend: isResend == freezed
          ? _value.isResend
          : isResend // ignore: cast_nullable_to_non_nullable
              as bool,
      resendToken: resendToken == freezed
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_VerifyPhoneStateCopyWith<$Res>
    implements $VerifyPhoneStateCopyWith<$Res> {
  factory _$$_VerifyPhoneStateCopyWith(
          _$_VerifyPhoneState value, $Res Function(_$_VerifyPhoneState) then) =
      __$$_VerifyPhoneStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isCodesent,
      String? verId,
      String? phone,
      PhoneAuthCredential? authCredential,
      bool isResend,
      int? resendToken,
      Failure? error});

  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_VerifyPhoneStateCopyWithImpl<$Res>
    extends _$VerifyPhoneStateCopyWithImpl<$Res>
    implements _$$_VerifyPhoneStateCopyWith<$Res> {
  __$$_VerifyPhoneStateCopyWithImpl(
      _$_VerifyPhoneState _value, $Res Function(_$_VerifyPhoneState) _then)
      : super(_value, (v) => _then(v as _$_VerifyPhoneState));

  @override
  _$_VerifyPhoneState get _value => super._value as _$_VerifyPhoneState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isCodesent = freezed,
    Object? verId = freezed,
    Object? phone = freezed,
    Object? authCredential = freezed,
    Object? isResend = freezed,
    Object? resendToken = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_VerifyPhoneState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCodesent: isCodesent == freezed
          ? _value.isCodesent
          : isCodesent // ignore: cast_nullable_to_non_nullable
              as bool,
      verId: verId == freezed
          ? _value.verId
          : verId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      authCredential: authCredential == freezed
          ? _value.authCredential
          : authCredential // ignore: cast_nullable_to_non_nullable
              as PhoneAuthCredential?,
      isResend: isResend == freezed
          ? _value.isResend
          : isResend // ignore: cast_nullable_to_non_nullable
              as bool,
      resendToken: resendToken == freezed
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_VerifyPhoneState implements _VerifyPhoneState {
  const _$_VerifyPhoneState(
      {required this.isLoading,
      required this.isCodesent,
      this.verId,
      this.phone,
      this.authCredential,
      required this.isResend,
      this.resendToken,
      this.error});

  @override
  final bool isLoading;
  @override
  final bool isCodesent;
  @override
  final String? verId;
  @override
  final String? phone;
  @override
  final PhoneAuthCredential? authCredential;
  @override
  final bool isResend;
  @override
  final int? resendToken;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'VerifyPhoneState(isLoading: $isLoading, isCodesent: $isCodesent, verId: $verId, phone: $phone, authCredential: $authCredential, isResend: $isResend, resendToken: $resendToken, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyPhoneState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isCodesent, isCodesent) &&
            const DeepCollectionEquality().equals(other.verId, verId) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.authCredential, authCredential) &&
            const DeepCollectionEquality().equals(other.isResend, isResend) &&
            const DeepCollectionEquality()
                .equals(other.resendToken, resendToken) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isCodesent),
      const DeepCollectionEquality().hash(verId),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(authCredential),
      const DeepCollectionEquality().hash(isResend),
      const DeepCollectionEquality().hash(resendToken),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_VerifyPhoneStateCopyWith<_$_VerifyPhoneState> get copyWith =>
      __$$_VerifyPhoneStateCopyWithImpl<_$_VerifyPhoneState>(this, _$identity);
}

abstract class _VerifyPhoneState implements VerifyPhoneState {
  const factory _VerifyPhoneState(
      {required final bool isLoading,
      required final bool isCodesent,
      final String? verId,
      final String? phone,
      final PhoneAuthCredential? authCredential,
      required final bool isResend,
      final int? resendToken,
      final Failure? error}) = _$_VerifyPhoneState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isCodesent => throw _privateConstructorUsedError;
  @override
  String? get verId => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  PhoneAuthCredential? get authCredential => throw _privateConstructorUsedError;
  @override
  bool get isResend => throw _privateConstructorUsedError;
  @override
  int? get resendToken => throw _privateConstructorUsedError;
  @override
  Failure? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyPhoneStateCopyWith<_$_VerifyPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}
