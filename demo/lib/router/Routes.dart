// ignore: file_names
import 'package:demo/pages/appBar.dart';
import 'package:flutter/material.dart';
import 'package:demo/pages/Product.dart';
import 'package:demo/pages/testRouter/Search.dart';
import 'package:demo/pages/testRouter/form.dart';
import 'package:demo/pages/tabs.dart';
import 'package:demo/pages/ProductInfo.dart';
import 'package:demo/pages/user/login.dart';
import 'package:demo/pages/user/register1.dart';
import 'package:demo/pages/user/register2.dart';
import 'package:demo/pages/appBar.dart';

final routes = {
  '/': (context) => const Tabs(),
  '/form': (context) => FormPage(title: 'form'),
  '/product': (context) => const ProductPage(),
  '/productInfo': (context, {arguments}) =>
      ProductInfoPage(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/login': (context) => const LoginPage(),
  '/register1': (context) => const Register1Page(),
  '/register2': (context) => const Register2Page(),
  '/appBar': (context) => const AppBarPage()
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
