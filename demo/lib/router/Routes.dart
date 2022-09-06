import 'package:demo/pages/testRouter/Search.dart';
import 'package:demo/pages/testRouter/form.dart';
import 'package:flutter/material.dart';
import 'package:demo/pages/tabs.dart';

final routes = {
  '/': (context, {arguments}) => const Tabs(),
  '/form': (context, {arguments}) => FormPage(title: 'form'),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
};

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function pagesContentBuilder = routes[name] as Function;

  if (settings.arguments != null) {
    final Route route = MaterialPageRoute(
        builder: (context) =>
            pagesContentBuilder(context, arguments: settings.arguments));
    return route;
  } else {
    final Route route =
        MaterialPageRoute(builder: (context) => pagesContentBuilder(context));
    return route;
  }
};
