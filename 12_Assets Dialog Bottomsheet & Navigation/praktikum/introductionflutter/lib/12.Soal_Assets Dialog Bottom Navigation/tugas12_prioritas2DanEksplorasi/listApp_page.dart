// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class listAppPage extends StatefulWidget {
  const listAppPage({Key? key}) : super(key: key);

  @override
  State<listAppPage> createState() => _listAppPageState();
}

class _listAppPageState extends State<listAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppList"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Builder(
                builder: (context) {
                  List apps = [
                    {
                      "label": "Material",
                      "icon": Icons.home_max,
                      "page": 'material',
                    },
                    {
                      "label": "Contact",
                      "icon": Icons.contact_page,
                      "page": 'contact',
                    },
                    {
                      "label": "Galeri",
                      "icon": Icons.image,
                      "page": 'galeri',
                    }
                  ];

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.0,
                      crossAxisCount: 2,
                      mainAxisSpacing: 6,
                      crossAxisSpacing: 6,
                    ),
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var item = apps[index];
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/${item["page"]}');
                        },
                        child: Container(
                          color: Colors.purple,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                item["icon"],
                                size: 32.0,
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              Text(
                                item["label"],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
