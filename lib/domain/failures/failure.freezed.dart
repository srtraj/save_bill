// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function() internalFailure,
    required TResult Function(PlatformException exception) platformFailure,
    required TResult Function(FirebaseAuthException exception) firebaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_InternalFailure value) internalFailure,
    required TResult Function(_PlatformFailure value) platformFailure,
    required TResult Function(FirebaseError value) firebaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$$_ClientFailureCopyWith<$Res> {
  factory _$$_ClientFailureCopyWith(
          _$_ClientFailure value, $Res Function(_$_ClientFailure) then) =
      __$$_ClientFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClientFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_ClientFailureCopyWith<$Res> {
  __$$_ClientFailureCopyWithImpl(
      _$_ClientFailure _value, $Res Function(_$_ClientFailure) _then)
      : super(_value, (v) => _then(v as _$_ClientFailure));

  @override
  _$_ClientFailure get _value => super._value as _$_ClientFailure;
}

/// @nodoc

class _$_ClientFailure implements _ClientFailure {
  const _$_ClientFailure();

  @override
  String toString() {
    return 'Failure.clientFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClientFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function() internalFailure,
    required TResult Function(PlatformException exception) platformFailure,
    required TResult Function(FirebaseAuthException exception) firebaseError,
  }) {
    return clientFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
  }) {
    return clientFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_InternalFailure value) internalFailure,
    required TResult Function(_PlatformFailure value) platformFailure,
    required TResult Function(FirebaseError value) firebaseError,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements Failure {
  const factory _ClientFailure() = _$_ClientFailure;
}

/// @nodoc
abstract class _$$_ServerFailureCopyWith<$Res> {
  factory _$$_ServerFailureCopyWith(
          _$_ServerFailure value, $Res Function(_$_ServerFailure) then) =
      __$$_ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_ServerFailureCopyWith<$Res> {
  __$$_ServerFailureCopyWithImpl(
      _$_ServerFailure _value, $Res Function(_$_ServerFailure) _then)
      : super(_value, (v) => _then(v as _$_ServerFailure));

  @override
  _$_ServerFailure get _value => super._value as _$_ServerFailure;
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure();

  @override
  String toString() {
    return 'Failure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function() internalFailure,
    required TResult Function(PlatformException exception) platformFailure,
    required TResult Function(FirebaseAuthException exception) firebaseError,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_InternalFailure value) internalFailure,
    required TResult Function(_PlatformFailure value) platformFailure,
    required TResult Function(FirebaseError value) firebaseError,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements Failure {
  const factory _ServerFailure() = _$_ServerFailure;
}

/// @nodoc
abstract class _$$_InternalFailureCopyWith<$Res> {
  factory _$$_InternalFailureCopyWith(
          _$_InternalFailure value, $Res Function(_$_InternalFailure) then) =
      __$$_InternalFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InternalFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_InternalFailureCopyWith<$Res> {
  __$$_InternalFailureCopyWithImpl(
      _$_InternalFailure _value, $Res Function(_$_InternalFailure) _then)
      : super(_value, (v) => _then(v as _$_InternalFailure));

  @override
  _$_InternalFailure get _value => super._value as _$_InternalFailure;
}

/// @nodoc

class _$_InternalFailure implements _InternalFailure {
  const _$_InternalFailure();

  @override
  String toString() {
    return 'Failure.internalFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InternalFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function() internalFailure,
    required TResult Function(PlatformException exception) platformFailure,
    required TResult Function(FirebaseAuthException exception) firebaseError,
  }) {
    return internalFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
  }) {
    return internalFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
    required TResult orElse(),
  }) {
    if (internalFailure != null) {
      return internalFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_InternalFailure value) internalFailure,
    required TResult Function(_PlatformFailure value) platformFailure,
    required TResult Function(FirebaseError value) firebaseError,
  }) {
    return internalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
  }) {
    return internalFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
    required TResult orElse(),
  }) {
    if (internalFailure != null) {
      return internalFailure(this);
    }
    return orElse();
  }
}

abstract class _InternalFailure implements Failure {
  const factory _InternalFailure() = _$_InternalFailure;
}

/// @nodoc
abstract class _$$_PlatformFailureCopyWith<$Res> {
  factory _$$_PlatformFailureCopyWith(
          _$_PlatformFailure value, $Res Function(_$_PlatformFailure) then) =
      __$$_PlatformFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exception});
}

/// @nodoc
class __$$_PlatformFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_PlatformFailureCopyWith<$Res> {
  __$$_PlatformFailureCopyWithImpl(
      _$_PlatformFailure _value, $Res Function(_$_PlatformFailure) _then)
      : super(_value, (v) => _then(v as _$_PlatformFailure));

  @override
  _$_PlatformFailure get _value => super._value as _$_PlatformFailure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_PlatformFailure(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as PlatformException,
    ));
  }
}

/// @nodoc

class _$_PlatformFailure implements _PlatformFailure {
  const _$_PlatformFailure(this.exception);

  @override
  final PlatformException exception;

  @override
  String toString() {
    return 'Failure.platformFailure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlatformFailure &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_PlatformFailureCopyWith<_$_PlatformFailure> get copyWith =>
      __$$_PlatformFailureCopyWithImpl<_$_PlatformFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function() internalFailure,
    required TResult Function(PlatformException exception) platformFailure,
    required TResult Function(FirebaseAuthException exception) firebaseError,
  }) {
    return platformFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
  }) {
    return platformFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
    required TResult orElse(),
  }) {
    if (platformFailure != null) {
      return platformFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_InternalFailure value) internalFailure,
    required TResult Function(_PlatformFailure value) platformFailure,
    required TResult Function(FirebaseError value) firebaseError,
  }) {
    return platformFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
  }) {
    return platformFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
    required TResult orElse(),
  }) {
    if (platformFailure != null) {
      return platformFailure(this);
    }
    return orElse();
  }
}

abstract class _PlatformFailure implements Failure {
  const factory _PlatformFailure(final PlatformException exception) =
      _$_PlatformFailure;

  PlatformException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PlatformFailureCopyWith<_$_PlatformFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirebaseErrorCopyWith<$Res> {
  factory _$$FirebaseErrorCopyWith(
          _$FirebaseError value, $Res Function(_$FirebaseError) then) =
      __$$FirebaseErrorCopyWithImpl<$Res>;
  $Res call({FirebaseAuthException exception});
}

/// @nodoc
class __$$FirebaseErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$FirebaseErrorCopyWith<$Res> {
  __$$FirebaseErrorCopyWithImpl(
      _$FirebaseError _value, $Res Function(_$FirebaseError) _then)
      : super(_value, (v) => _then(v as _$FirebaseError));

  @override
  _$FirebaseError get _value => super._value as _$FirebaseError;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$FirebaseError(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as FirebaseAuthException,
    ));
  }
}

/// @nodoc

class _$FirebaseError implements FirebaseError {
  const _$FirebaseError(this.exception);

  @override
  final FirebaseAuthException exception;

  @override
  String toString() {
    return 'Failure.firebaseError(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseError &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$FirebaseErrorCopyWith<_$FirebaseError> get copyWith =>
      __$$FirebaseErrorCopyWithImpl<_$FirebaseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function() internalFailure,
    required TResult Function(PlatformException exception) platformFailure,
    required TResult Function(FirebaseAuthException exception) firebaseError,
  }) {
    return firebaseError(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
  }) {
    return firebaseError?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    TResult Function(PlatformException exception)? platformFailure,
    TResult Function(FirebaseAuthException exception)? firebaseError,
    required TResult orElse(),
  }) {
    if (firebaseError != null) {
      return firebaseError(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_InternalFailure value) internalFailure,
    required TResult Function(_PlatformFailure value) platformFailure,
    required TResult Function(FirebaseError value) firebaseError,
  }) {
    return firebaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
  }) {
    return firebaseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
    TResult Function(_PlatformFailure value)? platformFailure,
    TResult Function(FirebaseError value)? firebaseError,
    required TResult orElse(),
  }) {
    if (firebaseError != null) {
      return firebaseError(this);
    }
    return orElse();
  }
}

abstract class FirebaseError implements Failure {
  const factory FirebaseError(final FirebaseAuthException exception) =
      _$FirebaseError;

  FirebaseAuthException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FirebaseErrorCopyWith<_$FirebaseError> get copyWith =>
      throw _privateConstructorUsedError;
}
