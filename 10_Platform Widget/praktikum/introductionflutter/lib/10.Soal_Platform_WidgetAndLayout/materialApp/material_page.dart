// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

int _selectedIndex = 0;

class homePage extends StatelessWidget {
  homePage({Key? key}) : super(key: key);

  final List<DataContact> dataContact = [
    DataContact("Leanne Graham", "1-770-736-8031 x56442"),
    DataContact("Ervin Howell", "010-692-6593 x09125"),
    DataContact("Clementine Bauch", "1-463-123-4447"),
    DataContact("Patricia Lebsack", "493-170-9623 x156"),
    DataContact("Chelsey Dietrich", "(254)954-1289"),
    DataContact("Mrs. Dennis Schulist", "1-477-935-8478 x6430"),
    DataContact("Kurtis Weissnat", "210.067.6132"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF424242),
        title: const Text("Material App"),
        actions: const [],
      ),
      drawer: Drawer(
          backgroundColor: Color(0xFF303030),
          child: ListView(
            children: const [
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )),
      body: ListView.builder(
        itemCount: dataContact.length,
        itemBuilder: (BuildContext context, int index) {
          final item = dataContact[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(item.name[0]),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            title: Text(
              item.name,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(dataContact[index].number),
            trailing: const SizedBox(
              width: 0,
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF303030),
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF66e2c7),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings'),
          ]),
    );
  }
}

class DataContact {
  final String name;
  final String number;

  DataContact(this.name, this.number);
}
