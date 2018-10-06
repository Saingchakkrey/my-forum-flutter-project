import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'routes.dart' as routes;

final router = routes.config();

void init() async {
  runApp(Forums());
}

class Forums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(1, 196, 151, 1.0),
        accentColor: Colors.greenAccent,
      ),
      onGenerateRoute: router.generator,
    );
  }
}