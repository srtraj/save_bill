import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerDataModel with _$CustomerDataModel {
  factory CustomerDataModel(
      {required int id,
      required String name,
      required int price,
      required DateTime created,
      required DateTime modified}) = _UserModel;

  factory CustomerDataModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataModelFromJson(json);
}
