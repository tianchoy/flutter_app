import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class MD_Detail extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    print(route);
    return null;
  }
}
