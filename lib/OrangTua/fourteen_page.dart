import 'package:flutter/material.dart';
import 'seven_page.dart'; // Pastikan untuk mengimport halaman SevenPage jika belum
import 'eight_page.dart'; // Import halaman EightPage
import 'nine_page.dart'; // Import halaman NinePage

class FourteenPage extends StatelessWidget {
  const FourteenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
                  "images/logo.png",
                  height: 100, // Adjusted image height
                ),
            _buildStepCard(
              context,
              'Langkah 1: Daftar',
              'Mulai dengan pendaftaran.',
              Icons.edit,
              SevenPage(),
            ),
            _buildStepCard(
              context,
              'Langkah 2: Masukkan Jadwal',
              'Atur jadwal kegiatan anak.',
              Icons.calendar_today,
              EightPage(),
            ),
            _buildStepCard(
              context,
              'Langkah 3: Pantau Aktivitas',
              'Lihat dan pantau aktivitas anak.',
              Icons.assignment,
              NinePage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCard(BuildContext context, String title, String description, IconData icon, Widget destination) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, size: 40, color: Colors.blue),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text(description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
