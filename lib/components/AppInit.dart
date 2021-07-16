import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:voidustries_ca/config/application.dart';
import 'package:voidustries_ca/config/routes.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  // Constructor
  _AppState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Voidustries',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Hack',
      ),
      onGenerateRoute: Application.router.generator,
    );

    print('Inital Route: ${app.initialRoute}');

    return app;
  }
}
