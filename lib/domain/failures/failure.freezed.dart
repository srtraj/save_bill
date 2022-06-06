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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_InternalFailure value) internalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
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
  }) {
    return clientFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
  }) {
    return clientFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
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
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
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
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
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
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
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
  }) {
    return internalFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
  }) {
    return internalFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function()? internalFailure,
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
  }) {
    return internalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
  }) {
    return internalFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_InternalFailure value)? internalFailure,
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
