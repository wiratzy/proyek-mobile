import 'package:flutter/material.dart';
import 'package:proyek_mobile/first_page.dart';
import 'package:proyek_mobile/OrangTua/fifth_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}
