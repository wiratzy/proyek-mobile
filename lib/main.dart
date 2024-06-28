import 'package:flutter/material.dart';
import 'package:proyek_mobile/fifth_page.dart';
import 'package:proyek_mobile/first_page.dart';
import 'package:proyek_mobile/fourth_page.dart';
import 'package:proyek_mobile/main_page.dart';
import 'package:proyek_mobile/second_page.dart';
import 'package:proyek_mobile/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThirdPage(),
    );
  }
}
