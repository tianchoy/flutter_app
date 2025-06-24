import 'package:dio/dio.dart';
import '../utils/http.dart';

class ApiService {
  static const String _baseUrl = 'https://api.example.com';
  final HttpService _httpService = HttpService(baseUrl: _baseUrl);

  // 用户相关API
  Future<Response> login(String email, String password) async {
    final data = {'email': email, 'password': password};
    return await _httpService.post('/auth/login', data: data);
  }

  Future<Response> register(String email, String password) async {
    final data = {'email': email, 'password': password};
    return await _httpService.post('/auth/register', data: data);
  }

  // 数据相关API
  Future<Response> fetchUserData() async {
    return await _httpService.get('/users/me');
  }

  Future<Response> updateUserProfile(Map<String, dynamic> data) async {
    return await _httpService.put('/users/me', data: data);
  }

  // 示例：带进度回调的文件上传
  Future<Response> uploadFile(
    String filePath, {
    required ProgressCallback onSendProgress,
  }) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(filePath),
    });

    return await _httpService.post(
      '/upload',
      data: formData,
      options: Options(contentType: Headers.multipartFormDataContentType),
      onSendProgress: onSendProgress,
    );
  }
}
