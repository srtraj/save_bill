import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:save_bill/application/bloc_observer/bloc_observer.dart';
import 'package:save_bill/core/constants.dart';
import 'package:save_bill/domain/models/user_details_model/user_details_model.dart';

import 'package:save_bill/presentation/app.dart';

import 'domain/di/get_it.dart' as get_it;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  Hive.registerAdapter(UserDetailsModelAdapter());
  await Hive.openBox(MetaConstant.localDbName);
  await Firebase.initializeApp();
  unawaited(get_it.init());
  BlocOverrides.runZoned(
    () {
      runApp(const App());
    },
    blocObserver: BlocObserverClass(),
  );
}
