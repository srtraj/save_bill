import 'dart:developer';

import 'package:save_bill/domain/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:save_bill/domain/i_repo/i_contact_repo.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:save_bill/domain/models/contact_model/contact_model.dart';

class ContactRepo implements IContactRepo {
  @override
  Future<Either<Failure, List<ContactModel>>> getContactList() async {
    List<ContactModel> contactList = [];
    if (await FlutterContacts.requestPermission()) {
      List<Contact> contacts = await FlutterContacts.getContacts(
          withPhoto: true, withProperties: true);
      for (var element in contacts) {
        for (var phone in element.phones) {
          contactList.add(ContactModel(
              name: element.displayName,
              phones: phone.number,
              photo: element.thumbnail));
        }
      }
    }
    return Right(contactList);
  }
}
