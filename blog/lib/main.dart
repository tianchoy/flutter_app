import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Router/Routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      //onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeftWithFade,
      getPages: AppRouter.routes,
    );
  }
}
