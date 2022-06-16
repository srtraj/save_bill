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
    required TResult Function(String name, File? image, String? imageUrl)
        profileUploadToDb,
    required TResult Function() profileFetchFromDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? picProfile,
    TResult Function(String name, File? image, String? imageUrl)?
        profileUploadToDb,
    TResult Function()? profileFetchFromDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? picProfile,
    TResult Function(String name, File? image, String? imageUrl)?
        profileUploadToDb,
    TResult Function()? profileFetchFromDb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_picProfile value) picProfile,
    required TResult Function(ProfileUploadToDb value) profileUploadToDb,
    required TResult Function(ProfileFetchFromDb value) profileFetchFromDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
    TResult Function(ProfileUploadToDb value)? profileUploadToDb,
    TResult Function(ProfileFetchFromDb value)? profileFetchFromDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
    TResult Function(ProfileUploadToDb value)? profileUploadToDb,
    TResult Function(ProfileFetchFromDb value)? profileFetchFromDb,
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
    required TResult Function(String name, File? image, String? imageUrl)
        profileUploadToDb,
    required TResult Function() profileFetchFromDb,
  }) {
    return picProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? picProfile,
    TResult Function(String name, File? image, String? imageUrl)?
        profileUploadToDb,
    TResult Function()? profileFetchFromDb,
  }) {
    return picProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? picProfile,
    TResult Function(String name, File? image, String? imageUrl)?
        profileUploadToDb,
    TResult Function()? profileFetchFromDb,
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
    required TResult Function(ProfileUploadToDb value) profileUploadToDb,
    required TResult Function(ProfileFetchFromDb value) profileFetchFromDb,
  }) {
    return picProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
    TResult Function(ProfileUploadToDb value)? profileUploadToDb,
    TResult Function(ProfileFetchFromDb value)? profileFetchFromDb,
  }) {
    return picProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
    TResult Function(ProfileUploadToDb value)? profileUploadToDb,
    TResult Function(ProfileFetchFromDb value)? profileFetchFromDb,
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
abstract class _$$ProfileUploadToDbCopyWith<$Res> {
  factory _$$ProfileUploadToDbCopyWith(
          _$ProfileUploadToDb value, $Res Function(_$ProfileUploadToDb) then) =
      __$$ProfileUploadToDbCopyWithImpl<$Res>;
  $Res call({String name, File? image, String? imageUrl});
}

/// @nodoc
class __$$ProfileUploadToDbCopyWithImpl<$Res>
    extends _$ProfileUploadEventCopyWithImpl<$Res>
    implements _$$ProfileUploadToDbCopyWith<$Res> {
  __$$ProfileUploadToDbCopyWithImpl(
      _$ProfileUploadToDb _value, $Res Function(_$ProfileUploadToDb) _then)
      : super(_value, (v) => _then(v as _$ProfileUploadToDb));

  @override
  _$ProfileUploadToDb get _value => super._value as _$ProfileUploadToDb;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ProfileUploadToDb(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileUploadToDb implements ProfileUploadToDb {
  const _$ProfileUploadToDb({required this.name, this.image, this.imageUrl});

  @override
  final String name;
  @override
  final File? image;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ProfileUploadEvent.profileUploadToDb(name: $name, image: $image, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUploadToDb &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$$ProfileUploadToDbCopyWith<_$ProfileUploadToDb> get copyWith =>
      __$$ProfileUploadToDbCopyWithImpl<_$ProfileUploadToDb>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() picProfile,
    required TResult Function(String name, File? image, String? imageUrl)
        profileUploadToDb,
    required TResult Function() profileFetchFromDb,
  }) {
    return profileUploadToDb(name, image, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? picProfile,
    TResult Function(String name, File? image, String? imageUrl)?
        profileUploadToDb,
    TResult Function()? profileFetchFromDb,
  }) {
    return profileUploadToDb?.call(name, image, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? picProfile,
    TResult Function(String name, File? image, String? imageUrl)?
        profileUploadToDb,
    TResult Function()? profileFetchFromDb,
    required TResult orElse(),
  }) {
    if (profileUploadToDb != null) {
      return profileUploadToDb(name, image, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_picProfile value) picProfile,
    required TResult Function(ProfileUploadToDb value) profileUploadToDb,
    required TResult Function(ProfileFetchFromDb value) profileFetchFromDb,
  }) {
    return profileUploadToDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
    TResult Function(ProfileUploadToDb value)? profileUploadToDb,
    TResult Function(ProfileFetchFromDb value)? profileFetchFromDb,
  }) {
    return profileUploadToDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
    TResult Function(ProfileUploadToDb value)? profileUploadToDb,
    TResult Function(ProfileFetchFromDb value)? profileFetchFromDb,
    required TResult orElse(),
  }) {
    if (profileUploadToDb != null) {
      return profileUploadToDb(this);
    }
    return orElse();
  }
}

abstract class ProfileUploadToDb implements ProfileUploadEvent {
  const factory ProfileUploadToDb(
      {required final String name,
      final File? image,
      final String? imageUrl}) = _$ProfileUploadToDb;

  String get name => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProfileUploadToDbCopyWith<_$ProfileUploadToDb> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileFetchFromDbCopyWith<$Res> {
  factory _$$ProfileFetchFromDbCopyWith(_$ProfileFetchFromDb value,
          $Res Function(_$ProfileFetchFromDb) then) =
      __$$ProfileFetchFromDbCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileFetchFromDbCopyWithImpl<$Res>
    extends _$ProfileUploadEventCopyWithImpl<$Res>
    implements _$$ProfileFetchFromDbCopyWith<$Res> {
  __$$ProfileFetchFromDbCopyWithImpl(
      _$ProfileFetchFromDb _value, $Res Function(_$ProfileFetchFromDb) _then)
      : super(_value, (v) => _then(v as _$ProfileFetchFromDb));

  @override
  _$ProfileFetchFromDb get _value => super._value as _$ProfileFetchFromDb;
}

/// @nodoc

class _$ProfileFetchFromDb implements ProfileFetchFromDb {
  const _$ProfileFetchFromDb();

  @override
  String toString() {
    return 'ProfileUploadEvent.profileFetchFromDb()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileFetchFromDb);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() picProfile,
    required TResult Function(String name, File? image, String? imageUrl)
        profileUploadToDb,
    required TResult Function() profileFetchFromDb,
  }) {
    return profileFetchFromDb();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? picProfile,
    TResult Function(String name, File? image, String? imageUrl)?
        profileUploadToDb,
    TResult Function()? profileFetchFromDb,
  }) {
    return profileFetchFromDb?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? picProfile,
    TResult Function(String name, File? image, String? imageUrl)?
        profileUploadToDb,
    TResult Function()? profileFetchFromDb,
    required TResult orElse(),
  }) {
    if (profileFetchFromDb != null) {
      return profileFetchFromDb();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_picProfile value) picProfile,
    required TResult Function(ProfileUploadToDb value) profileUploadToDb,
    required TResult Function(ProfileFetchFromDb value) profileFetchFromDb,
  }) {
    return profileFetchFromDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
    TResult Function(ProfileUploadToDb value)? profileUploadToDb,
    TResult Function(ProfileFetchFromDb value)? profileFetchFromDb,
  }) {
    return profileFetchFromDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_picProfile value)? picProfile,
    TResult Function(ProfileUploadToDb value)? profileUploadToDb,
    TResult Function(ProfileFetchFromDb value)? profileFetchFromDb,
    required TResult orElse(),
  }) {
    if (profileFetchFromDb != null) {
      return profileFetchFromDb(this);
    }
    return orElse();
  }
}

abstract class ProfileFetchFromDb implements ProfileUploadEvent {
  const factory ProfileFetchFromDb() = _$ProfileFetchFromDb;
}

/// @nodoc
mixin _$ProfileUploadState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get uploadCompleted => throw _privateConstructorUsedError;
  bool get fetchCompleted => throw _privateConstructorUsedError;
  File? get imageData => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
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
  $Res call(
      {bool isLoading,
      bool uploadCompleted,
      bool fetchCompleted,
      File? imageData,
      String? imageUrl,
      String? name,
      Failure? error});

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
    Object? uploadCompleted = freezed,
    Object? fetchCompleted = freezed,
    Object? imageData = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadCompleted: uploadCompleted == freezed
          ? _value.uploadCompleted
          : uploadCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchCompleted: fetchCompleted == freezed
          ? _value.fetchCompleted
          : fetchCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      imageData: imageData == freezed
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as File?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {bool isLoading,
      bool uploadCompleted,
      bool fetchCompleted,
      File? imageData,
      String? imageUrl,
      String? name,
      Failure? error});

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
    Object? uploadCompleted = freezed,
    Object? fetchCompleted = freezed,
    Object? imageData = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_ProfileUploadState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadCompleted: uploadCompleted == freezed
          ? _value.uploadCompleted
          : uploadCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchCompleted: fetchCompleted == freezed
          ? _value.fetchCompleted
          : fetchCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      imageData: imageData == freezed
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as File?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_ProfileUploadState implements _ProfileUploadState {
  const _$_ProfileUploadState(
      {required this.isLoading,
      required this.uploadCompleted,
      required this.fetchCompleted,
      this.imageData,
      this.imageUrl,
      this.name,
      this.error});

  @override
  final bool isLoading;
  @override
  final bool uploadCompleted;
  @override
  final bool fetchCompleted;
  @override
  final File? imageData;
  @override
  final String? imageUrl;
  @override
  final String? name;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'ProfileUploadState(isLoading: $isLoading, uploadCompleted: $uploadCompleted, fetchCompleted: $fetchCompleted, imageData: $imageData, imageUrl: $imageUrl, name: $name, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileUploadState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.uploadCompleted, uploadCompleted) &&
            const DeepCollectionEquality()
                .equals(other.fetchCompleted, fetchCompleted) &&
            const DeepCollectionEquality().equals(other.imageData, imageData) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(uploadCompleted),
      const DeepCollectionEquality().hash(fetchCompleted),
      const DeepCollectionEquality().hash(imageData),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(name),
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
      required final bool uploadCompleted,
      required final bool fetchCompleted,
      final File? imageData,
      final String? imageUrl,
      final String? name,
      final Failure? error}) = _$_ProfileUploadState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get uploadCompleted => throw _privateConstructorUsedError;
  @override
  bool get fetchCompleted => throw _privateConstructorUsedError;
  @override
  File? get imageData => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  Failure? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileUploadStateCopyWith<_$_ProfileUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}
