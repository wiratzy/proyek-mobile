import 'package:flutter/material.dart';

class EightPage extends StatelessWidget {
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
              
                 // Border radius untuk sudut bawah
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
                    'Jadwal Les',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Sepekan 3 x pertemuan. 30 menit /pertemuan\n'
                  '2. Buka setiap hari di jam 10.00-17.00 WIB\n'
                  '3. Hari & Jam Les bisa memilih sendiri\n'
                  '4. Tanggal merah=LIBUR',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Ayo Tentukan Waktumu Minggu Ini !!!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Hari',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(7, (index) {
                    return CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Jam',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '10:00',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Tambahkan aksi untuk tombol simpan
                    },
                    child: Text('SIMPAN'),
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