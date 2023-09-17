// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';

class materialDesign extends StatelessWidget {
  materialDesign({Key? key}) : super(key: key);

  final List<String> course = [
    "Learn Flutter",
    "Learn ReactJS",
    "Learn Vue JS",
    "Learn Tailwind CSS",
    "Learn UI/UX",
    "Learn Figma",
    "Learn Digital Marketing"
  ];

  final _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6200EE),
        centerTitle: true,
        title: const Text(
          "My Flutter App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 24.0,
              color: Color(0xFFd2b7fa),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: course.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              course[index],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            tileColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            shape: const Border(
              bottom: BorderSide(color: Colors.grey, width: 0.2),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF03DAC5),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF6200EE),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xFFd6bdfb),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.error), label: 'Information'),
        ],
      ),
    );
  }
}
