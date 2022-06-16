import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/models/customer_model/customer_model.dart';

abstract class IFirebaseRepo {
  Future<Either<Failure, List<CustomerDataModel>>> getCustomerList();
  Future<void> signInWithMobile({
    required BuildContext context,
    required String phoneNumber,
    int? forceResendingToken,
    required Function timerfunction,
    required Duration duration,
  });
  Future<Either<Failure, void>> verifyOtp(
      {String? verificationId, String? smsCode, PhoneAuthCredential? cred});

  Future<Either<Failure, Map<String, String>>> uploadProfile(
      {required String name, File? image, String? imageUrl});
  Future<Either<Failure, Map<String, dynamic>>> fetchProfile();
  Future<Either<Failure, File?>> fetchImageFromUrl({required String imageUrl});
  Future<Either<Failure, void>> addCustomer(
      {required String name, String? phone});
  Future<void> signOut();
}
