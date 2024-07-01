import 'package:flutter/material.dart';
import 'sixteen_page.dart';

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
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              alignment: Alignment(0, 0),
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Image(
                    image: AssetImage('images/logo.png'),
                    width: 150,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Daftar Sebagai Mitra',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Area',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
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
                          onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SixteenPage()),
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
                                horizontal: 30,
                                vertical: 10), // Adjusted padding
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
