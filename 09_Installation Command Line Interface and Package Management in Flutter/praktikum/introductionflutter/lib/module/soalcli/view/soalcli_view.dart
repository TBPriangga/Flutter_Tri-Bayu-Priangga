import 'package:flutter/material.dart';
import 'package:introductionflutter/core.dart';
import '../controller/soalcli_controller.dart';

class SoalcliView extends StatefulWidget {
  const SoalcliView({Key? key}) : super(key: key);

  Widget build(context, SoalcliController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Halo Alterra"),
        actions: const [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Column(
                children: [
                  Text(
                    "Nama saya adalah Tri Bayu Priangga",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SoalcliView> createState() => SoalcliController();
}
