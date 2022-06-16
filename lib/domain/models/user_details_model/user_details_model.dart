import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_details_model.freezed.dart';
part 'user_details_model.g.dart';

@freezed
class UserDetailsModel with _$UserDetailsModel {
  @HiveType(typeId: 1, adapterName: 'UserDetailsModelAdapter')
  const factory UserDetailsModel({
    @HiveField(0) required String name,
    @HiveField(1) required String profUrl,
  }) = _UserDetailsModel;

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsModelFromJson(json);
}
