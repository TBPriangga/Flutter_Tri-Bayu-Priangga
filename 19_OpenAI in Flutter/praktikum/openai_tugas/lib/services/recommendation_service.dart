import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:openai_demo/constants/open_ai_contants.dart';
import 'package:openai_demo/models/open_ai_model.dart';
import 'package:http/http.dart' as http;

class RecommendationService {
  static Future<GptData> getRecommendation(
      {required String budget,
      required String camera,
      required String storage}) async {
    late GptData gptData = GptData(
      warning: '',
      id: "",
      object: "",
      created: 0,
      model: "",
      choices: [],
      usage: Usage(promptTokens: 0, completionTokens: 0, totalTokens: 0),
    );

    try {
      var url = Uri.parse('https://api.openai.com/v1/completions');

      Map<String, String> headers = {
        'Content-Type': 'application/json;charset=UTF-8',
        'Charset': 'utf-8',
        'Authorization': 'Bearer $apiKey',
      };

      final formatCurrency = NumberFormat.currency(
        locale: 'id_ID',
        symbol: 'IDR ',
        decimalDigits: 0,
      );

      String smartphoneBudget = formatCurrency.format(int.parse(budget));
      String cameraMp = formatCurrency.format(int.parse(camera));
      String internalStorage = formatCurrency.format(int.parse(storage));

      String propmtData =
          "Your are a expert. Please give me a 3 list Smartphone recommendation within detail spesification, budget equals to $smartphoneBudget with spesification $cameraMp and $internalStorage ";

      final data = jsonEncode({
        "model": "text-davinci-003",
        "prompt": propmtData,
        "temperature": 1,
        "max_tokens": 256,
        "top_p": 1,
        "frequency_penalty": 0,
        "presence_penalty": 0
      });

      final response = await http.post(url, headers: headers, body: data);
      if (response.statusCode == 200) {
        gptData = GptData.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      throw Exception('Error occured when sending Request');
    }

    return gptData;
  }
}
