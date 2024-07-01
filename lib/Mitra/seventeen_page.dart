import 'package:flutter/material.dart';

class SeventeenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? selectedDay;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
             color: const Color.fromARGB(255, 216, 98, 237),
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
                Center(
                  child: DropdownButton<String>(
                    hint: Text('Pilih Hari'),
                    value: selectedDay,
                    items: <String>[
                      'Senin',
                      'Selasa',
                      'Rabu',
                      'Kamis',
                      'Jumat',
                      'Sabtu',
                      'Minggu',
                    ].map((String day) {
                      return DropdownMenuItem<String>(
                        value: day,
                        child: Text(day),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle change
                      selectedDay = newValue!;
                    },
                  ),
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
