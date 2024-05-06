import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_client.g.dart';

@Riverpod(keepAlive: true)
HttpClient httpClient(HttpClientRef ref) {
  return DioHttpAdapter();
}

abstract class HttpClient {
  Future<String> get(String url);
  Future<String> post({required String url, Map<String, dynamic>? data});
}

class DioHttpAdapter implements HttpClient {
  final Dio dio = Dio();

  @override
  Future<String> get(String url) async {
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
      // return response.data.jsify();
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Future<String> post({required String url, Map<String, dynamic>? data}) async {
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
      // return response.data.jsify();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
