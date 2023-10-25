import 'package:flutter/material.dart';
import 'package:openai_demo/models/open_ai_model.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.gptResponseData})
      : super(key: key);

  final GptData gptResponseData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recommendations"),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Recommendations',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: gptResponseData.choices.isNotEmpty
                  ? Text(
                      gptResponseData.choices[0].text,
                      textAlign: TextAlign.justify,
                    )
                  : const Text(
                      'No recommendations available',
                      textAlign: TextAlign.justify,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
