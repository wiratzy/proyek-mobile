import 'package:proyek_mobile/second_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Main Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go To Second Page'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}
