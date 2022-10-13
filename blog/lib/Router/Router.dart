import 'package:flutter/material.dart';
import '../Pages/NavigationBar.dart';

final routes = {
  '/': (context) => const NavigationPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  //onGenerateRoute配置
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name] as Function;
  // ignore: unnecessary_null_comparison
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
