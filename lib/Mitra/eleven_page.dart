import 'package:flutter/material.dart';

class ElevenPage extends StatelessWidget {
  const ElevenPage({super.key});

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
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.orange),
              child: Row(
                children: [
                  Container(
                    color: Colors.orange,
                    child: Image(
                      width: 200,
                      image: AssetImage('images/logo.png'),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    child: Center(
                      child: Text(
                        'Hai Mitra',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Daftar Pengajar',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: DataTable(
                      columns: [
                        DataColumn(
                          label: Text(
                            'Nama',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Kontak',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Bidang Mengajar',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(
                          cells: [
                            DataCell(Text('Budi')),
                            DataCell(Text('08123456789')),
                            DataCell(Text('Matematika')),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('Siti')),
                            DataCell(Text('08198765432')),
                            DataCell(Text('Bahasa Inggris')),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('Ahmad')),
                            DataCell(Text('08111222333')),
                            DataCell(Text('Fisika')),
                          ],
                        ),
                      ],
                      border: TableBorder.all(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan aksi untuk tombol di sini
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor:
                          Colors.purple, // Warna latar belakang tombol
                    ),
                    child: Text('Tambahkan Pengajar'),
                  ),
                ],
              ),
              width: 500,
              height: 620,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 98, 237),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
