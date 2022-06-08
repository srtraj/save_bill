import 'package:flutter/material.dart';
import 'package:save_bill/domain/di/get_it.dart';
import 'package:save_bill/routes/route_generator.dart';
import 'package:save_bill/routes/routes.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final RouteGenerator _routeGenerator = getItInstance<RouteGenerator>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.profileUpdatePage,
      onGenerateRoute: _routeGenerator.generateRoute,
    );
  }
}