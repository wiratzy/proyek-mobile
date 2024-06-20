import 'package:flutter/material.dart';

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
            width: 200,
            height: 500, // Adjusted height
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/logo.png",
                  height: 100, // Adjusted image height
                ),
                SizedBox(height: 20), // Add some spacing between image and text
                Text(
                  "Siapa Anda ?",
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Button action
                  },
                  child: Text("Orang Tua"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple,
                    padding: EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10), // Adjusted padding
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Another button action
                  },
                  child: Text('Mitra Ahe'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple,
                    padding: EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10), // Adjusted padding
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
