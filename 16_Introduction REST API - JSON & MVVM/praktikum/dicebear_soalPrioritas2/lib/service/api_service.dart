import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<String> fetchSvg() async {
    try {
      final response = await _dio.get(
        "https://api.dicebear.com/7.x/pixel-art/svg",
      );

      if (response.statusCode == 200) {
        final svg = response.data;
        return svg;
      } else {
        throw Exception('Gagal mengambil SVG');
      }
    } catch (e) {
      throw Exception('Gagal mengambil SVG');
    }
  }
}
