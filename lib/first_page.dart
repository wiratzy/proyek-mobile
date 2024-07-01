import 'package:flutter/material.dart';
import 'OrangTua/fourth_page.dart';
import 'Mitra/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Anak Hebat',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(bottom: 150), // Adjusted bottom margin
            width: 300, // Adjusted width for horizontal buttons
            height: 500, // Adjusted height
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/logo.png",
                  height: 100, // Adjusted image height
                ),
                SizedBox(height: 20), // Spacing between image and text
                Text(
                  "Masuk Sebagai ",
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FourthPage()),
                        );
                      },
                      child: Text("Orang Tua"),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.purple,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10), // Adjusted padding
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondPage()),
                        );
                      },
                      child: Text('Mitra Ahe'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.purple,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10), // Adjusted padding
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
