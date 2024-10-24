import 'package:dio/dio.dart';

abstract class ApiClient {
  Future<Response<T>> get<T>(
    String url, {
    Options options,
    String baseUrl = "",
    Map<String, dynamic> queryParameters = const {},
  });
}
