import 'package:flutter/material.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  height: 150,
                  width: 200,
                  image: AssetImage('images/logo.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Daftar',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Kontak',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Alamat',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Provinsi',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Kabupaten',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Kecamatan',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Kelurahan',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                SizedBox(
                          height: 20,
                          ),
                            ElevatedButton(
                            onPressed: () {},
                            child: Text(
                            'Daftar',
                            style: TextStyle(color: Colors.white),
                            ),
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
