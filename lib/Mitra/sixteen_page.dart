import 'package:flutter/material.dart';
import 'package:proyek_mobile/Mitra/thirteen_page.dart';
import 'package:proyek_mobile/Mitra/ten_page.dart';
import 'package:proyek_mobile/Mitra/eleven_page.dart';
import 'package:proyek_mobile/Mitra/tweleve_page.dart';
import 'package:proyek_mobile/Mitra/seventeen_page.dart';

class SixteenPage extends StatefulWidget {
  const SixteenPage({Key? key}) : super(key: key);

  @override
  _SixteenPageState createState() => _SixteenPageState();
}

class _SixteenPageState extends State<SixteenPage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const TenPage(),
    ElevenPage(),
    TwelevePage(),
    SeventeenPage(),
    ThirteenPage(),
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
          content: Text('Selamat datang Mitra Pabean Ilir.'),
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
        ),
        centerTitle: true,
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
            icon: Icon(Icons.school_outlined),
            label: 'Daftar Pengajar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Daftar Murid',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            label: 'Jadwal Belajar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Metode Pembelajaran',
          ),
        ],
      ),
    );
  }
}
