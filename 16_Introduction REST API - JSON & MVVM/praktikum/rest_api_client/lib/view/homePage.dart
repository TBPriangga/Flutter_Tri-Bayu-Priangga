import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/contact_view_model.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RestAPI'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<MyViewModel>(
              builder: (context, myViewModel, child) {
                return ElevatedButton(
                  onPressed: () async {
                    // Panggil metode untuk melakukan POST request di sini
                    final response = await myViewModel.postData();

                    // Tampilkan respons dalam SnackBar jika respons tidak null
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text('Respon dari POST request: ${response.data}'),
                      ),
                    );
                  },
                  child: const Text('Kirim POST Request'),
                );
              },
            ),
            const SizedBox(
                height: 20), // Spasi antara tombol POST dan tombol Fetch
            Consumer<MyViewModel>(
              builder: (context, contactViewModel, child) {
                return ElevatedButton(
                  onPressed: () async {
                    final contact = await contactViewModel.fetchContact();
                    if (contact != null) {
                      // Tampilkan data kontak menggunakan widget atau lakukan sesuatu dengan data tersebut
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'Data Kontak: ID-${contact.id}, Name-${contact.name}, Phone-${contact.phone}'),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Gagal mengambil data kontak'),
                        ),
                      );
                    }
                  },
                  child: const Text('Ambil Data Kontak'),
                );
              },
            ),
            const SizedBox(
                height: 20), // Spasi antara tombol Fetch dan tombol Put Data
            Consumer<MyViewModel>(
              builder: (context, myViewModel, child) {
                return ElevatedButton(
                  onPressed: () async {
                    // Panggil metode untuk melakukan PUT request di sini
                    final response = await myViewModel.putData();

                    // Tampilkan respons dalam SnackBar jika respons tidak null
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text('Respon dari PUT request: ${response.data}'),
                      ),
                    );
                  },
                  child: const Text('Kirim PUT Request'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
