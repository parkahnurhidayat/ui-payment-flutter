import 'package:dio/dio.dart';
import 'package:project/model/post_model.dart';

class ApiService {
  final Dio _dio = Dio();
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<List> getPosts() async {
    try {
      final response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => Post.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
