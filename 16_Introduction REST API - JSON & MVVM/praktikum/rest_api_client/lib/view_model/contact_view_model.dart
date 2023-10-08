import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/contact.dart';
import '../service/api_service.dart';

class MyViewModel with ChangeNotifier {
  final ApiService apiService =
      ApiService(); // Buat instance ApiService dengan Dio

  Future<Response> postData() async {
    final response = await apiService
        .postDataWithDio(); // Gunakan metode postDataWithDio() yang akan Anda tambahkan di ApiService

    if (response.statusCode == 201) {
      print("Data contact berhasil ditambahkan:");
      print(response.data); // Menggunakan response.data untuk Dio
    } else {
      print(
          "Gagal menambahkan data contact. Status code: ${response.statusCode}");
    }

    return response;
  }

  Future<Contact?> fetchContact() async {
    final jsonData = await apiService
        .fetchContactJsonWithDio(); // Gunakan metode fetchContactJsonWithDio() yang akan Anda tambahkan di ApiService
    print('Response JSON: $jsonData'); // Menampilkan respons ke Debug Console
    return Contact.fromJson(jsonData);
  }

  Future<Response> putData() async {
    final requestBody = {
      "id": 1,
      "title": "foo",
      "body": "bar",
      "userId": 1,
    };

    final response = await apiService.putDataWithDio(requestBody);

    if (response.statusCode == 200) {
      print('Permintaan PUT berhasil:');
      print(response.data);
    } else {
      print(
          'Gagal melakukan permintaan PUT. Status code: ${response.statusCode}');
    }

    return response; // Mengembalikan respons
  }
}
