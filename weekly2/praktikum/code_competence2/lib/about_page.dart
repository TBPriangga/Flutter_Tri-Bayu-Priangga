// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:code_competence2/home_page.dart';
import 'package:flutter/material.dart';

class aboutPage extends StatefulWidget {
  aboutPage({Key? key}) : super(key: key);

  @override
  State<aboutPage> createState() => _aboutPageState();
}

class _aboutPageState extends State<aboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.purple,
        actions: [],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text("Contact Us"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const homePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About Us"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => aboutPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.login_outlined),
              title: const Text("Login"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "About Us",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "JKT48 adalah grup idola asal Indonesia dan grup saudari AKB48 yang pertama di luar Jepang. Mengadopsi konsep AKB48, idol you can meet, grup ini mengadakan pertunjukan rutin di Teater JKT48 yang terletak di Lantai 4 fX Sudirman, Jakarta Pusat, DKI Jakarta.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 14.0,
              ),
              Builder(builder: (context) {
                List categories = [
                  {
                    "label": "Theater",
                    "image":
                        "https://jkt48.com/assets/theater/thumbnail/gate.jpg",
                  },
                  {
                    "label": "Member",
                    "image":
                        "https://assets-a1.kompasiana.com/items/album/2023/07/24/7bc2e7de-ac57-4d0c-8f7c-d11f6b9b9f92-1024x557-64be7e2408a8b52eb138b4b2.jpeg",
                  },
                  {
                    "label": "Merch",
                    "image": "https://jkt48.com/upload/news/6235720539ffa.png",
                  },
                  {
                    "label": "Fanclub",
                    "image": "https://jkt48.com/images/ofc/fanclub-photo01.png",
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
                    return Container(
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
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          Center(
                            child: Text(
                              item["label"],
                              style: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
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
