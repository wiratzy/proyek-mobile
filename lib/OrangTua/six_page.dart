import 'package:flutter/material.dart';
import 'package:proyek_mobile/OrangTua/seven_page.dart'; // Pastikan untuk mengimport halaman SevenPage jika belum
import 'package:proyek_mobile/OrangTua/eight_page.dart'; // Pastikan untuk mengimport halaman SevenPage jika belum
import 'package:proyek_mobile/OrangTua/nine_page.dart'; // Pastikan untuk mengimport halaman SevenPage jika belum
import 'package:proyek_mobile/OrangTua/fourteen_page.dart'; // Pastikan untuk mengimport halaman SevenPage jika belum
import 'package:proyek_mobile/OrangTua/fifteen_page.dart'; // Pastikan untuk mengimport halaman SevenPage jika belum


class SixPage extends StatefulWidget {
  const SixPage({Key? key}) : super(key: key);

  @override
  _SixPageState createState() => _SixPageState();
}

class _SixPageState extends State<SixPage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const FourteenPage(),
    const SevenPage(),
    EightPage(),
    NinePage(),
    FifteenPage(),
    
  ];

@override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showWelcomeAlert(context);
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showWelcomeAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Berhasil Login!'),
          content: Text('Selamat datang di Aplikasi Anak Hebat.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Anak Hebat',
            style: TextStyle(color: Colors.white),
          ), centerTitle: true,
          backgroundColor: Colors.purple,
        ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Pendaftaran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Jadwal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Aktivitas Anak',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Metode Pembelajaran',
          ),
        ],
      ),
    );
  }
}
