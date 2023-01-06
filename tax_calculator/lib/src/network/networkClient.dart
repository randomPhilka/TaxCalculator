import 'package:dio/dio.dart';

class NetworkClient {
  final Dio _dio;

  NetworkClient(this._dio) {
    _dio.options.responseType = ResponseType.json;
  }

  Future<Response> get(
    String url, {
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (error) {
      rethrow;
    }
  }
}
