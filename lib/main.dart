import 'package:flutter/material.dart';
import 'package:todoapp/shared/shared.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        return Router.generateRoute(settings);
      },
      initialRoute: homeRoute,
      // home: MainPage(),
    );
  }
}