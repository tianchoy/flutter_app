import 'package:dio/dio.dart';
import '../../Config/Config.dart';

BaseOptions options = BaseOptions(
  baseUrl: NetWorkConfig.baseUrl,
  connectTimeout: NetWorkConfig.connectTimeOut,
  sendTimeout: NetWorkConfig.sendTimeout,
  receiveTimeout: NetWorkConfig.receiveTimeout,
);

Dio dio = Dio(options);

Future getData(url) async {
  try {
    Response res = await dio.get(url);
    return res.data;
  } catch (e) {
    return print(e);
  }
}

Future getDetail(url) async {
  try {
    Response res = await dio.get(url);
    return res.data;
  } catch (e) {
    return print(e);
  }
}
