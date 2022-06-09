
import 'package:dartz/dartz.dart';
import 'package:save_bill/domain/failures/failure.dart';

abstract class ISocialShareRepo {
   Future<Either<Failure, void>> sendWhatsappReminder(
      {required String mobNumber,required String name,required String price});
      Future<Either<Failure, void>> sendSmsReminder(
      {required String mobNumber,required String name,required String price});
}