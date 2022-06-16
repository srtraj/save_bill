// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetailsModel _$UserDetailsModelFromJson(Map<String, dynamic> json) {
  return _UserDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$UserDetailsModel {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get profUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsModelCopyWith<UserDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsModelCopyWith<$Res> {
  factory $UserDetailsModelCopyWith(
          UserDetailsModel value, $Res Function(UserDetailsModel) then) =
      _$UserDetailsModelCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String name, @HiveField(1) String profUrl});
}

/// @nodoc
class _$UserDetailsModelCopyWithImpl<$Res>
    implements $UserDetailsModelCopyWith<$Res> {
  _$UserDetailsModelCopyWithImpl(this._value, this._then);

  final UserDetailsModel _value;
  // ignore: unused_field
  final $Res Function(UserDetailsModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? profUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profUrl: profUrl == freezed
          ? _value.profUrl
          : profUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDetailsModelCopyWith<$Res>
    implements $UserDetailsModelCopyWith<$Res> {
  factory _$$_UserDetailsModelCopyWith(
          _$_UserDetailsModel value, $Res Function(_$_UserDetailsModel) then) =
      __$$_UserDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String name, @HiveField(1) String profUrl});
}

/// @nodoc
class __$$_UserDetailsModelCopyWithImpl<$Res>
    extends _$UserDetailsModelCopyWithImpl<$Res>
    implements _$$_UserDetailsModelCopyWith<$Res> {
  __$$_UserDetailsModelCopyWithImpl(
      _$_UserDetailsModel _value, $Res Function(_$_UserDetailsModel) _then)
      : super(_value, (v) => _then(v as _$_UserDetailsModel));

  @override
  _$_UserDetailsModel get _value => super._value as _$_UserDetailsModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? profUrl = freezed,
  }) {
    return _then(_$_UserDetailsModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profUrl: profUrl == freezed
          ? _value.profUrl
          : profUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'UserDetailsModelAdapter')
class _$_UserDetailsModel implements _UserDetailsModel {
  const _$_UserDetailsModel(
      {@HiveField(0) required this.name, @HiveField(1) required this.profUrl});

  factory _$_UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailsModelFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String profUrl;

  @override
  String toString() {
    return 'UserDetailsModel(name: $name, profUrl: $profUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailsModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.profUrl, profUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(profUrl));

  @JsonKey(ignore: true)
  @override
  _$$_UserDetailsModelCopyWith<_$_UserDetailsModel> get copyWith =>
      __$$_UserDetailsModelCopyWithImpl<_$_UserDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailsModelToJson(this);
  }
}

abstract class _UserDetailsModel implements UserDetailsModel {
  const factory _UserDetailsModel(
      {@HiveField(0) required final String name,
      @HiveField(1) required final String profUrl}) = _$_UserDetailsModel;

  factory _UserDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_UserDetailsModel.fromJson;

  @override
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get profUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailsModelCopyWith<_$_UserDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
