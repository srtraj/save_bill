// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      created: DateTime.parse(json['created'] as String),
      modified: DateTime.parse(json['modified'] as String),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
