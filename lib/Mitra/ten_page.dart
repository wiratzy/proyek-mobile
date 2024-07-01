import 'package:flutter/material.dart';
import 'package:proyek_mobile/Mitra/seventeen_page.dart';
import 'eleven_page.dart'; // Pastikan untuk mengimport halaman SevenPage jika belum
import 'tweleve_page.dart'; // Import halaman EightPage
import 'thirteen_page.dart'; // Import halaman NinePage

class TenPage extends StatelessWidget {
  const TenPage({Key? key}) : super(key: key);

  // Daftar warna yang berbeda untuk setiap item
  static final List<Color> _itemColors = [
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Menambah tinggi AppBar
        child: AppBar(
          title: Text('Mitra Pabean Ilir', style: TextStyle(fontSize: 24)), // Menyesuaikan ukuran teks
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Tambahkan aksi untuk ikon pengaturan
              },
            ),
          ],
          centerTitle: true, // Menengahkan teks
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding kiri dan kanan
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0, // Jarak antar baris
          crossAxisSpacing: 16.0, // Jarak antar kolom
          children: [
            _buildGridItem('Daftar Pengajar', Icons.school_outlined, context, ElevenPage(), _itemColors[0]),
            _buildGridItem('Daftar Murid', Icons.people_alt_outlined, context, TwelevePage(), _itemColors[1]),
            _buildGridItem('Jadwal', Icons.calendar_today_rounded, context, ThirteenPage(), _itemColors[2]),
            _buildGridItem('Aktivitas Anak', Icons.assignment, context, SeventeenPage(), _itemColors[3]),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(String title, IconData icon, BuildContext context, Widget destination, Color color) {
    return Card(
      elevation: 2,
      color: color, // Mengatur warna card sesuai dengan parameter color
      child: InkWell(
       onTap: () {
          // Tambahkan aksi untuk tiap grid item
          if (title == 'Daftar Pengajar') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ElevenPage()),
            );
          } else if (title == 'Daftar Murid') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TwelevePage()),
            );
          } else if (title == 'Jadwal') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SeventeenPage()),
            );
          } else if (title == 'Aktivitas Anak') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirteenPage()),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 50),
              SizedBox(height: 10),
              Text(title, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    
    );
  }
}
