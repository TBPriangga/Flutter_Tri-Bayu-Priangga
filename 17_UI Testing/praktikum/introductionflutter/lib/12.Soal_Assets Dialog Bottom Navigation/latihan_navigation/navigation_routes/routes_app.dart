// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_navigation/navigation_routes/routes_page.dart';
import 'package:introductionflutter/12.Soal_Assets%20Dialog%20Bottom%20Navigation/latihan_navigation/navigation_routes/routes_screen.dart';

class RouteApp extends StatelessWidget {
  const RouteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => const RoutesPage(),
        '/about': (_) => const AboutRouteScreen(),
      },
    );
  }
}
