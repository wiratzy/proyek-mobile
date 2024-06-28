import 'package:flutter/material.dart';

class NinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Meningkatkan tinggi AppBar
        child: AppBar(
          title: Text('Welcome Moms!', style: TextStyle(fontSize: 24)),
          centerTitle: true, // Menengahkan teks
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/logo.png'), // Ganti dengan logo Anda
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30), // Border radius untuk sudut bawah
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30), // Border radius untuk sudut atas
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Pantauan Pembelajaran',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCircleButton('Tingkatan'),
                    _buildCircleButton('Pengajar'),
                    _buildCircleButton('Nilai'),
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

  Widget _buildCircleButton(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}