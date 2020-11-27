import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'shared/shared.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/getting_started',
      getPages: AppRoute.getPages(),
    );
  }
}
