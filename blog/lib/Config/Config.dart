import 'package:dio/dio.dart';

class NetWorkConfig {
  static String baseUrl = "https://tianchoy.com/api/";
  static const connectTimeOut = 10000;
  static const readTimeOut = 10000;
  static const writeTimeOut = 10000;
  static const successCode = 200;
  static const sendTimeout = 5000;
  static const receiveTimeout = 5000;
}
