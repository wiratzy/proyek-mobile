import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

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
            alignment: Alignment(0, 0),
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 100)),
                Image(
                  image: AssetImage('images/logo.png'),
                  width: 150,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nomor Unit',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10), // Add some space between TextFormFields
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nama Pemilik',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                SizedBox(height: 10), // Add some space between TextFormFields
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Kontak',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                SizedBox(height: 10), // Add some space between TextFormFields
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                SizedBox(height: 10), // Add some space between TextFormFields
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(0, 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text('1'),
                          Text('2')
                          ],
                      ),
                      Row(
                        children: [
                          Text('3'),
                          Text('4')
                           ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
