import 'package:flutter/material.dart';
import 'six_page.dart';

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
          padding: EdgeInsets.all(20),
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
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Masukkan Nama',
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
                      labelText: 'Mausukkan Kontak',
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
                      labelText: 'Masukkan Email',
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
                      labelText: 'Masukkan Password',
                    ),
                  ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Alamat',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                 GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    // mainAxisSpacing: 20,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Provinsi',
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Kabupaten',
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Kecamatan',
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Kelurahan',
                        ),
                      ),
                    ],
                  ),
                SizedBox(
                          height: 20,
                          ),
                            ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SixPage()),
                      );
                            },
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
