import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:save_bill/domain/i_repo/i_firebase_repo.dart';
import 'package:save_bill/domain/models/user_model/user_model.dart';

class FirebaseRepo implements IFirebaseRepo {
  final _fireInstance = FirebaseFirestore.instance;

  @override
  Future<Either<Failure, List<UserModel>>> getUserList(
      {required String phoneNumber}) async {
    try {
      final response =
          await _fireInstance.collection("userList").doc(phoneNumber).get();
      Map<String, dynamic> data = response.data() ?? {};

      List<UserModel> userList = [];
      data.forEach((key, value) {
        userList.add(UserModel.fromJson(value));
      });
      userList.sort((a, b) {
        return b.modified.compareTo(a.modified);
      });
      return Right(userList);
    } catch (error) {
      return const Left(Failure.internalFailure());
    }
  }
}
