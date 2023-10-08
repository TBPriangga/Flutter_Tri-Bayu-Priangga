import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<Response> postDataWithDio() async {
    const url =
        'https://reqres.in/api/users'; // Ganti dengan URL API yang sesuai

    try {
      final response = await dio.post(
        url,
        data: {
          'name': 'Tri Bayu',
          'email': 'tpriangga6@gmail.com',
        },
      );

      return response;
    } catch (e) {
      throw Exception('Gagal melakukan permintaan POST: $e');
    }
  }

  Future<Map<String, dynamic>> fetchContactJsonWithDio() async {
    const url =
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2';

    try {
      final response = await dio.get(url);

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Gagal mengambil data kontak');
      }
    } catch (e) {
      throw Exception('Gagal melakukan permintaan GET: $e');
    }
  }

  Future<Response> putDataWithDio(Map<String, dynamic> requestBody) async {
    const putUrl = 'https://jsonplaceholder.typicode.com/posts/1';

    try {
      final response = await dio.put(
        putUrl,
        data: requestBody,
      );

      return response;
    } catch (e) {
      throw Exception('Gagal melakukan permintaan PUT: $e');
    }
  }
}
