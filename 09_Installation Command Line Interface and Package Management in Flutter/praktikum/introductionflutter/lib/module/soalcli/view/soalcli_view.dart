import 'package:flutter/material.dart';
import 'package:introductionflutter/core.dart';
import 'package:introductionflutter/main.dart';
import 'package:introductionflutter/state_util.dart';
import '../controller/soalcli_controller.dart';

class SoalcliView extends StatefulWidget {
  SoalcliView({Key? key}) : super(key: key);

  Widget build(context, SoalcliController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Halo Alterra"),
        backgroundColor: Colors.blue,
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const Text(
                    "Nama saya adalah Tri Bayu Priangga",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () =>
                        Get.to((MyHomePage(title: "Hello Alterra"))),
                    child: const Text(
                      "Soal Prioritas2",
                      style: TextStyle(
                        color: Colors.white,
                      ),
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
