import 'package:dartz/dartz.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/models/user_model/user_model.dart';

abstract class IFirebaseRepo {
  Future<Either<Failure, List<UserModel>>> getUserList(
      {required String phoneNumber});
}
