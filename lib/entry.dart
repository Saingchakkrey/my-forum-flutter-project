import 'package:flutter/material.dart';

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
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
      ),
      onGenerateRoute: router.generator,
    );
  }
}