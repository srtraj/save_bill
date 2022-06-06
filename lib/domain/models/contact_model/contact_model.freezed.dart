// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactModel {
  String get name => throw _privateConstructorUsedError;
  Uint8List? get photo => throw _privateConstructorUsedError;
  String get phones => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactModelCopyWith<ContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactModelCopyWith<$Res> {
  factory $ContactModelCopyWith(
          ContactModel value, $Res Function(ContactModel) then) =
      _$ContactModelCopyWithImpl<$Res>;
  $Res call({String name, Uint8List? photo, String phones});
}

/// @nodoc
class _$ContactModelCopyWithImpl<$Res> implements $ContactModelCopyWith<$Res> {
  _$ContactModelCopyWithImpl(this._value, this._then);

  final ContactModel _value;
  // ignore: unused_field
  final $Res Function(ContactModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? phones = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      phones: phones == freezed
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ContactModelCopyWith<$Res>
    implements $ContactModelCopyWith<$Res> {
  factory _$$_ContactModelCopyWith(
          _$_ContactModel value, $Res Function(_$_ContactModel) then) =
      __$$_ContactModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, Uint8List? photo, String phones});
}

/// @nodoc
class __$$_ContactModelCopyWithImpl<$Res>
    extends _$ContactModelCopyWithImpl<$Res>
    implements _$$_ContactModelCopyWith<$Res> {
  __$$_ContactModelCopyWithImpl(
      _$_ContactModel _value, $Res Function(_$_ContactModel) _then)
      : super(_value, (v) => _then(v as _$_ContactModel));

  @override
  _$_ContactModel get _value => super._value as _$_ContactModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? photo = freezed,
    Object? phones = freezed,
  }) {
    return _then(_$_ContactModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      phones: phones == freezed
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ContactModel implements _ContactModel {
  _$_ContactModel({required this.name, this.photo, required this.phones});

  @override
  final String name;
  @override
  final Uint8List? photo;
  @override
  final String phones;

  @override
  String toString() {
    return 'ContactModel(name: $name, photo: $photo, phones: $phones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.phones, phones));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(phones));

  @JsonKey(ignore: true)
  @override
  _$$_ContactModelCopyWith<_$_ContactModel> get copyWith =>
      __$$_ContactModelCopyWithImpl<_$_ContactModel>(this, _$identity);
}

abstract class _ContactModel implements ContactModel {
  factory _ContactModel(
      {required final String name,
      final Uint8List? photo,
      required final String phones}) = _$_ContactModel;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Uint8List? get photo => throw _privateConstructorUsedError;
  @override
  String get phones => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ContactModelCopyWith<_$_ContactModel> get copyWith =>
      throw _privateConstructorUsedError;
}
