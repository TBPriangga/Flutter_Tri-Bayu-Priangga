// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class galeriPage_prioritas2 extends StatefulWidget {
  const galeriPage_prioritas2({Key? key}) : super(key: key);

  @override
  State<galeriPage_prioritas2> createState() => _galeriPage_prioritas2State();
}

class _galeriPage_prioritas2State extends State<galeriPage_prioritas2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galeri"),
        actions: const [],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Builder(builder: (context) {
                List categories = [
                  {
                    "nama": "Greesela Adhelia",
                    "image":
                        "https://pbs.twimg.com/media/FzJvr6iX0AIrcjN?format=jpg&name=900x900",
                  },
                  {
                    "nama": "Michelle Alexandra",
                    "image":
                        "https://pbs.twimg.com/media/FzJrnFOXoAYAvIE?format=jpg&name=900x900",
                  },
                  {
                    "nama": "Grace Octaviani",
                    "image":
                        "https://pbs.twimg.com/media/FzJtS6lXsAEnV-5?format=jpg&name=900x900",
                  },
                  {
                    "nama": "Cathleen Nixie",
                    "image":
                        "https://pbs.twimg.com/media/FzJtAVVWIAMxqHe?format=jpg&name=900x900",
                  },
                ];

                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0,
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = categories[index];
                    return GestureDetector(
                      onTap: () {
                        // Tampilkan bottomsheet dengan 2 pilihan ya & tidak
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  // Gambar
                                  Image.network(
                                    item["image"],
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    item["nama"],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  const Text(
                                      "Apakah anda ingin Melihat lebih detail?"),
                                  Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // Pilihan tidak
                                        TextButton(
                                          onPressed: () {
                                            // Tutup dialog
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Tidak"),
                                        ),
                                        // Pilihan ya
                                        TextButton(
                                          onPressed: () {
                                            // Masuk ke halaman baru
                                            Navigator.of(context).pushNamed(
                                              '/screen',
                                              arguments: item["image"],
                                            );
                                          },
                                          child: const Text("Ya"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              item["image"],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
