import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.clientFailure() = _ClientFailure;
  const factory Failure.serverFailure() = _ServerFailure;
  const factory Failure.internalFailure() = _InternalFailure;
  const factory Failure.platformFailure(PlatformException exception) =
      _PlatformFailure;
  const factory Failure.firebaseError(FirebaseAuthException exception) =
      FirebaseError;
}
