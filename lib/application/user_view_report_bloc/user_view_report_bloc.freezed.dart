// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_view_report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserViewReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? resetFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetFilter value) resetFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResetFilter value)? resetFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetFilter value)? resetFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserViewReportEventCopyWith<$Res> {
  factory $UserViewReportEventCopyWith(
          UserViewReportEvent value, $Res Function(UserViewReportEvent) then) =
      _$UserViewReportEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserViewReportEventCopyWithImpl<$Res>
    implements $UserViewReportEventCopyWith<$Res> {
  _$UserViewReportEventCopyWithImpl(this._value, this._then);

  final UserViewReportEvent _value;
  // ignore: unused_field
  final $Res Function(UserViewReportEvent) _then;
}

/// @nodoc
abstract class _$$ResetFilterCopyWith<$Res> {
  factory _$$ResetFilterCopyWith(
          _$ResetFilter value, $Res Function(_$ResetFilter) then) =
      __$$ResetFilterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetFilterCopyWithImpl<$Res>
    extends _$UserViewReportEventCopyWithImpl<$Res>
    implements _$$ResetFilterCopyWith<$Res> {
  __$$ResetFilterCopyWithImpl(
      _$ResetFilter _value, $Res Function(_$ResetFilter) _then)
      : super(_value, (v) => _then(v as _$ResetFilter));

  @override
  _$ResetFilter get _value => super._value as _$ResetFilter;
}

/// @nodoc

class _$ResetFilter implements ResetFilter {
  const _$ResetFilter();

  @override
  String toString() {
    return 'UserViewReportEvent.resetFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilter,
  }) {
    return resetFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? resetFilter,
  }) {
    return resetFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilter,
    required TResult orElse(),
  }) {
    if (resetFilter != null) {
      return resetFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResetFilter value) resetFilter,
  }) {
    return resetFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResetFilter value)? resetFilter,
  }) {
    return resetFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResetFilter value)? resetFilter,
    required TResult orElse(),
  }) {
    if (resetFilter != null) {
      return resetFilter(this);
    }
    return orElse();
  }
}

abstract class ResetFilter implements UserViewReportEvent {
  const factory ResetFilter() = _$ResetFilter;
}

/// @nodoc
mixin _$UserViewReportState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get resetFilter => throw _privateConstructorUsedError;
  List<dynamic>? get originalData => throw _privateConstructorUsedError;
  List<dynamic> get data => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserViewReportStateCopyWith<UserViewReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserViewReportStateCopyWith<$Res> {
  factory $UserViewReportStateCopyWith(
          UserViewReportState value, $Res Function(UserViewReportState) then) =
      _$UserViewReportStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool resetFilter,
      List<dynamic>? originalData,
      List<dynamic> data,
      Failure? error});

  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$UserViewReportStateCopyWithImpl<$Res>
    implements $UserViewReportStateCopyWith<$Res> {
  _$UserViewReportStateCopyWithImpl(this._value, this._then);

  final UserViewReportState _value;
  // ignore: unused_field
  final $Res Function(UserViewReportState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? resetFilter = freezed,
    Object? originalData = freezed,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      resetFilter: resetFilter == freezed
          ? _value.resetFilter
          : resetFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      originalData: originalData == freezed
          ? _value.originalData
          : originalData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
abstract class _$$_UserViewReportStateCopyWith<$Res>
    implements $UserViewReportStateCopyWith<$Res> {
  factory _$$_UserViewReportStateCopyWith(_$_UserViewReportState value,
          $Res Function(_$_UserViewReportState) then) =
      __$$_UserViewReportStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool resetFilter,
      List<dynamic>? originalData,
      List<dynamic> data,
      Failure? error});

  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$_UserViewReportStateCopyWithImpl<$Res>
    extends _$UserViewReportStateCopyWithImpl<$Res>
    implements _$$_UserViewReportStateCopyWith<$Res> {
  __$$_UserViewReportStateCopyWithImpl(_$_UserViewReportState _value,
      $Res Function(_$_UserViewReportState) _then)
      : super(_value, (v) => _then(v as _$_UserViewReportState));

  @override
  _$_UserViewReportState get _value => super._value as _$_UserViewReportState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? resetFilter = freezed,
    Object? originalData = freezed,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_UserViewReportState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      resetFilter: resetFilter == freezed
          ? _value.resetFilter
          : resetFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      originalData: originalData == freezed
          ? _value._originalData
          : originalData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_UserViewReportState implements _UserViewReportState {
  const _$_UserViewReportState(
      {required this.isLoading,
      required this.resetFilter,
      final List<dynamic>? originalData,
      required final List<dynamic> data,
      this.error})
      : _originalData = originalData,
        _data = data;

  @override
  final bool isLoading;
  @override
  final bool resetFilter;
  final List<dynamic>? _originalData;
  @override
  List<dynamic>? get originalData {
    final value = _originalData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic> _data;
  @override
  List<dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Failure? error;

  @override
  String toString() {
    return 'UserViewReportState(isLoading: $isLoading, resetFilter: $resetFilter, originalData: $originalData, data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserViewReportState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.resetFilter, resetFilter) &&
            const DeepCollectionEquality()
                .equals(other._originalData, _originalData) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(resetFilter),
      const DeepCollectionEquality().hash(_originalData),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_UserViewReportStateCopyWith<_$_UserViewReportState> get copyWith =>
      __$$_UserViewReportStateCopyWithImpl<_$_UserViewReportState>(
          this, _$identity);
}

abstract class _UserViewReportState implements UserViewReportState {
  const factory _UserViewReportState(
      {required final bool isLoading,
      required final bool resetFilter,
      final List<dynamic>? originalData,
      required final List<dynamic> data,
      final Failure? error}) = _$_UserViewReportState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get resetFilter => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get originalData => throw _privateConstructorUsedError;
  @override
  List<dynamic> get data => throw _privateConstructorUsedError;
  @override
  Failure? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserViewReportStateCopyWith<_$_UserViewReportState> get copyWith =>
      throw _privateConstructorUsedError;
}
