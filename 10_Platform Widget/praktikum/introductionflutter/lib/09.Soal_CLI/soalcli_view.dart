import 'package:flutter/material.dart';

class SoalcliView extends StatelessWidget {
  const SoalcliView({Key? key}) : super(key: key);

  void _navigateToNextPage(BuildContext context) {
    // Gantilah bagian ini dengan navigasi ke halaman berikutnya.
    // Misalnya:
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => NextPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halo Alterra"),
        backgroundColor: Colors.blue,
        actions: const [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12.0),
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
                    onPressed: () => _navigateToNextPage(context),
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
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Berikutnya"),
      ),
      body: Center(
        child: Text("Ini adalah halaman berikutnya."),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SoalcliView(),
  ));
}
