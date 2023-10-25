// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:openai_demo/screens/result_screen.dart';
import 'package:openai_demo/services/recommendation_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _budgetcontroller = TextEditingController();
  final TextEditingController _cameracontroller = TextEditingController();
  final TextEditingController _storagecontroller = TextEditingController();
  bool isLoading = false;

  void _getRecommendation() async {
    setState(() {
      isLoading = true;
    });
    try {
      final result = await RecommendationService.getRecommendation(
        budget: _budgetcontroller.value.text,
        camera: _cameracontroller.value.text,
        storage: _storagecontroller.value.text,
      );

      if (mounted) {
        setState(() {
          isLoading = false;
        });

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return ResultScreen(gptResponseData: result);
          },
        ));
      }
    } catch (e) {
      const snackBar = SnackBar(
        content: Text('Failed to send a request. Please try again.'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone Recommendation"),
      ),
      body: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              heightFactor: 4,
              child: Text(
                'Phone Recommendation by AI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("Budget"),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _budgetcontroller,
                decoration: const InputDecoration(
                  hintText: 'Enter a budget (in IDR)',
                ),
                validator: (String? value) {
                  bool isInvalid = value == null ||
                      value.isEmpty ||
                      int.tryParse(value) == null;

                  if (isInvalid) {
                    return 'Please enter a valid numbers';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("Camera (MP)"),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _cameracontroller,
                decoration: const InputDecoration(
                  hintText: 'Enter your requirement for the camera',
                ),
                validator: (String? value) {
                  bool isInvalid = value == null ||
                      value.isEmpty ||
                      int.tryParse(value) == null;

                  if (isInvalid) {
                    return 'Please enter a valid numbers';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("Internal Storage (GB)"),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _storagecontroller,
                decoration: const InputDecoration(
                  hintText: 'Enter your desired Internal Storage',
                ),
                validator: (String? value) {
                  bool isInvalid = value == null ||
                      value.isEmpty ||
                      int.tryParse(value) == null;

                  if (isInvalid) {
                    return 'Please enter a valid numbers';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: isLoading && _formKey.currentState!.validate() != false
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ElevatedButton(
                      onPressed: _getRecommendation,
                      child: const Center(
                        child: Text('Get Recommendation'),
                      ),
                    ),
            )
          ],
        ),
      )),
    );
  }
}
