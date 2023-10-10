import 'package:dicebear/service/api_service.dart';
import 'package:flutter/material.dart';

class SvgViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  String svgContent = "";

  Future<void> fetchSvg() async {
    try {
      final svg = await _apiService.fetchSvg();
      svgContent = svg;
      notifyListeners();
    } catch (e) {
      throw Exception('Gagal mengambil SVG');
    }
  }
}
