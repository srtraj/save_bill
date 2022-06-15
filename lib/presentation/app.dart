import 'package:flutter/material.dart';
import 'package:save_bill/domain/di/get_it.dart';
import 'package:save_bill/routes/route_generator.dart';
import 'package:save_bill/routes/routes.dart';

import 'pdf_view.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
      // home: PdfPage(),
    );
  }
    @override
  void dispose() {
    _routeGenerator.dispose();
    super.dispose();
  }
}


