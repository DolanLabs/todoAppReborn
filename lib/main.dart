import 'package:flutter/material.dart';
import 'package:todoapp/shared/shared.dart';
import 'package:todoapp/ui/pages/pages.dart';

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
      home: MainPage(),
    );
  }
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => MainPage());
      case secondPageRoute:
        return MaterialPageRoute(builder: (_) => SecondPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
