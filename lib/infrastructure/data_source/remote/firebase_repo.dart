import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:save_bill/application/mobile_login_bloc/verify_phone_bloc/verify_phone_bloc.dart';

import 'package:save_bill/domain/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:save_bill/domain/i_repo/i_firebase_repo.dart';
import 'package:save_bill/domain/models/user_model/user_model.dart';
import 'package:http/http.dart' as http;

class FirebaseRepo implements IFirebaseRepo {
  final _fireInstance = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  final _colRef = FirebaseFirestore.instance.collection("data");
  final _firebaseStorage = FirebaseStorage.instance;

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

  @override
  Future<void> signInWithMobile({
    required BuildContext context,
    required String phoneNumber,
    required Function timerfunction,
    int? forceResendingToken,
    required Duration duration,
  }) async {
    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: (PhoneAuthCredential authCredential) {
            context.read<VerifyPhoneBloc>().add(
                VerifyPhoneEvent.verificationCompleted(
                    authCredential: authCredential));
          },
          verificationFailed: (FirebaseAuthException exception) {
            context.read<VerifyPhoneBloc>().add(
                VerifyPhoneEvent.verificationFailed(
                    error: Failure.firebaseError(exception)));
          },
          codeSent: (String verificationId, int? forceResendingToken) {
            timerfunction();
            context.read<VerifyPhoneBloc>().add(VerifyPhoneEvent.codeSent(
                verificationId: verificationId,
                forceResendingToken: forceResendingToken));
          },
          forceResendingToken: forceResendingToken,
          timeout: duration,
          codeAutoRetrievalTimeout: (String timeout) {
            context.read<VerifyPhoneBloc>().add(
                VerifyPhoneEvent.codeAutoRetrievalTimeout(timeout: timeout));
          });
    } on Exception catch (_) {
      context.read<VerifyPhoneBloc>().add(
          const VerifyPhoneEvent.verificationFailed(
              error: Failure.internalFailure()));
    }
  }

  @override
  Future<Either<Failure, void>> verifyOtp(
      {String? verificationId,
      String? smsCode,
      PhoneAuthCredential? cred}) async {
    try {
      if (cred != null) {
        await _auth.signInWithCredential(cred);
      } else {
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationId!, smsCode: smsCode!);

        // Sign the user in (or link) with the credential
        await FirebaseAuth.instance.signInWithCredential(credential);
      }
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(Failure.firebaseError(e));
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }

  @override
  Future<Either<Failure, Map<String, String>>> uploadProfile(
      {required String name, File? image}) async {
    String downloadUrl = "";
    try {
      if (image != null) {
        //Upload to Firebase
        var snapshot = await _firebaseStorage
            .ref()
            .child('${_auth.currentUser!.phoneNumber}/profile')
            .putFile(image);
        downloadUrl = await snapshot.ref.getDownloadURL();
      }
      if (_auth.currentUser != null) {
        await _colRef.doc(_auth.currentUser!.phoneNumber).set({
          "name": name,
          "authKey": _auth.currentUser!.uid,
          "profUrl": downloadUrl,
        }, SetOptions(merge: true));

        return Right({
          "name": name,
          "authKey": _auth.currentUser!.uid,
          "profUrl": downloadUrl,
        });
      }
      return const Right({});
    } on FirebaseAuthException catch (e) {
      return Left(Failure.firebaseError(e));
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> fetchProfile() async {
    try {
      if (_auth.currentUser != null) {
        final response =
            await _colRef.doc(_auth.currentUser!.phoneNumber).get();
        Map<String, dynamic> data = response.data() ?? {};
        print("----------------------------->$data");
        return Right(data);
      }
      return const Right({});
    } on FirebaseAuthException catch (e) {
      return Left(Failure.firebaseError(e));
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }

  @override
  Future<Either<Failure, File?>> fetchImageFromUrl(
      {required String imageUrl}) async {
    try {
      if (_auth.currentUser != null) {
        final response = await http.get(Uri.parse(imageUrl));

        final documentDirectory = await getApplicationDocumentsDirectory();

        final file = File("${documentDirectory.path}/, 'profile.png'");

        file.writeAsBytesSync(response.bodyBytes);
        return Right(file);
      }
      return const Right(null);
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }
}
