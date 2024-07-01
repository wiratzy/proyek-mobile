import 'package:flutter/material.dart';

class TwelevePage extends StatelessWidget {
  const TwelevePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Daftar Murid',
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
                            'Kelas',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Jadwal',
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
                            DataCell(Text('kelas 3')),
                            DataCell(Text('kamis-jumat-sabtu(Jam 10)')),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('Siti')),
                            DataCell(Text('kelas 4')),
                            DataCell(Text('Senin-Selasa-rabu(Jam 12)')),
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('Ahmad')),
                            DataCell(Text('Kelas 5')),
                            DataCell(Text('sabtu-minggu-senin(jam 11)')),
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
                    child: Text('Tambahkan Murid'),
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
      );
  }
}
