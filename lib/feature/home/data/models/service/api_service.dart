import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = 'https://newsdata.io/api/1/';
  final String apiKey = 'pub_52697ceba285bb77eb0145faa65433996b4e2';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.get(
      '$baseUrl$endPoint',
      queryParameters: {'apikey': apiKey, ...?queryParameters},
    );
    return response.data;
  }
}
