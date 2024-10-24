import 'package:dio/dio.dart';

import '../api_client.dart';

class ApiClientImpl implements ApiClient {
  final Dio dio;

  ApiClientImpl(this.dio);

  @override
  Future<Response<T>> get<T>(
    String url, {
    Options? options,
    String baseUrl = "",
    Map<String, dynamic> queryParameters = const {},
  }) async {
    final apiUrl = '$baseUrl/$url';

    try {
      final response = await dio.get<T>(
        apiUrl,
        options: options,
        queryParameters: queryParameters,
      );
      return response;
    } catch (error) {
      if (error is DioException && error.response != null) {
        return Future.error(error.response as Response<T>);
      } else {
        return Future.error(error);
      }
    }
  }
}
