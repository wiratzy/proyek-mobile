import 'package:flutter/material.dart';
import 'third_page.dart';
import 'sixteen_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Anak Hebat',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          alignment: Alignment(0, -25),
          padding: EdgeInsets.only(bottom: 25),
          width: 300,
          height: 700,
          child: Container(
            width: 500,
            child: Column(children: <Widget>[
              Image(
                image: AssetImage("images/logo.png"),
                width: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Masuk Sebagai Mitra',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Enter your username',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Enter your password',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SixteenPage()),
                          );
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.symmetric(
                      horizontal: 30, vertical: 10), // Adjusted padding
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdPage()),
                      );
                    },
                    child: Text(
                      'Belum Menambahkan Mitra',
                      style: TextStyle(
                        color: Colors.purple,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
            ]
            ),
          ),
        ),
      ),
    );
  }
}
