import 'package:flutter/material.dart';

class NinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 232, 191, 222),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
              bottom: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Pantauan Aktivitas',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        _buildTableHeader('Nomor'),
                        _buildTableHeader('Tingkatan'),
                        _buildTableHeader('Pengajar'),
                        _buildTableHeader('Nilai'),
                      ],
                    ),
                    TableRow(
                      children: [
                        _buildTableCell('1'),
                        _buildTableCell('Tingkat 1'),
                        _buildTableCell('Budi'),
                        _buildTableCell('A'),
                      ],
                    ),
                    TableRow(
                      children: [
                        _buildTableCell('2'),
                        _buildTableCell('Tingkat 2'),
                        _buildTableCell('Sari'),
                        _buildTableCell('B+'),
                      ],
                    ),
                    // Tambahkan baris data lainnya sesuai kebutuhan
                  ],
                ),
                Spacer(),
                Center(
                  child: Text(
                    'Selamat Anda Berhasil !!!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Tambahkan aksi untuk tombol Ambil Sertifikat
                    },
                    child: Text('Ambil Sertifikat'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTableHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildTableCell(String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        value,
        textAlign: TextAlign.center,
      ),
    );
  }
}
