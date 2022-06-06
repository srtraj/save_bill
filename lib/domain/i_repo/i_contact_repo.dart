

import 'package:dartz/dartz.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/models/contact_model/contact_model.dart';

abstract class IContactRepo{
   Future<Either<Failure, List<ContactModel>>> getContactList();
}