import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:save_bill/domain/di/get_it.dart';
import 'package:save_bill/domain/i_repo/i_local_db_repo.dart';
import 'package:save_bill/routes/route_generator.dart';
import 'package:save_bill/routes/routes.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late RouteGenerator _routeGenerator;
  late String initialRoute;
  late ILocalDbRepo _localBox;
  @override
  void initState() {
    _localBox = getItInstance<ILocalDbRepo>();
    _localBox.getInitialPageInfo() ??
        _localBox.setInitialPageInfo(pageInfo: Routes.initial);
    _routeGenerator = getItInstance<RouteGenerator>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: _localBox.getInitialPageInfo(),
      onGenerateRoute: _routeGenerator.generateRoute,
      // home: PdfPage(),
    );
  }

  @override
  void dispose() {
    Hive.close();
    _routeGenerator.dispose();
    super.dispose();
  }
}
