import 'package:flutter/material.dart';

class SixPage extends StatelessWidget {
  const SixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Menambah tinggi AppBar
        child: AppBar(
          title: Text('Welcome Moms!', style: TextStyle(fontSize: 24)), // Menyesuaikan ukuran teks
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
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30), // Border radius untuk sudut atas
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16.0, // Jarak antar baris
              crossAxisSpacing: 16.0, // Jarak antar kolom
              children: [
                _buildGridItem('Pendaftaran', Icons.edit, context),
                _buildGridItem('Jadwal', Icons.calendar_today, context),
                _buildGridItem('Lokasi Mitra', Icons.location_on, context),
                _buildGridItem('Aktivitas Anak', Icons.assignment, context),
                _buildGridItem('Metode Pembelajaran', Icons.school, context),
           
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(String title, IconData icon, BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {
          // Tambahkan aksi untuk tiap grid item
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) Icon(icon, size: 50),
              if (title.isNotEmpty) SizedBox(height: 10),
              if (title.isNotEmpty) Text(title, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}