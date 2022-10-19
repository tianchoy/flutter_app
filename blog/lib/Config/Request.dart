import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../../Config/Config.dart';

Future getData(url) async {
  var dio = Dio();
  dio.options = BaseOptions(
    baseUrl: NetWorkConfig.baseUrl,
    connectTimeout: NetWorkConfig.connectTimeOut,
    sendTimeout: NetWorkConfig.sendTimeout,
    receiveTimeout: NetWorkConfig.receiveTimeout,
  );
  try {
    Response res = await dio.get(url);
    return res.data;
  } catch (e) {
    return print(e);
  }
}
