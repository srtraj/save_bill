// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDetailsModelAdapter extends TypeAdapter<_$_UserDetailsModel> {
  @override
  final int typeId = 1;

  @override
  _$_UserDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserDetailsModel(
      name: fields[0] as String,
      profUrl: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserDetailsModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.profUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailsModel _$$_UserDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_UserDetailsModel(
      name: json['name'] as String,
      profUrl: json['profUrl'] as String,
    );

Map<String, dynamic> _$$_UserDetailsModelToJson(_$_UserDetailsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profUrl': instance.profUrl,
    };
