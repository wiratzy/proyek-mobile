import 'package:flutter/material.dart';

class FifteenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Metode Pembelajaran',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                _buildMethodCard('Visual', 'Pembelajaran menggunakan gambar dan visualisasi.'),
                _buildMethodCard('Auditori', 'Pembelajaran melalui mendengarkan.'),
                _buildMethodCard('Kinestetik', 'Pembelajaran melalui aktivitas fisik.'),
                _buildMethodCard('Reading/Writing', 'Pembelajaran melalui membaca dan menulis.'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMethodCard(String title, String description) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
      ),
    );
  }
}
