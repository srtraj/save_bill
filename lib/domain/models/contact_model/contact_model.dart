import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';

@freezed
class ContactModel with _$ContactModel {
  factory ContactModel(
      {required String name,
      Uint8List? photo,
      required String phones}) = _ContactModel;
}
