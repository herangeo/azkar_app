import 'package:azkar_app/athkar_page.dart';
import 'package:azkar_app/quran_page.dart';
import 'package:azkar_app/settings_page.dart';
import 'package:flutter/material.dart';


class PrayersPage extends StatefulWidget {
  const PrayersPage({Key? key}) : super(key: key);

  @override
  State<PrayersPage> createState() => _PrayersPageState();
}

class _PrayersPageState extends State<PrayersPage> {
  int _selectedTab = 1; // Start with the Prayers tab selected

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
      switch (index) {
        case 0:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AthkarPage()),
          );
          break;
        case 1:

          break;
        case 2:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => QuranPage()),
          );
          break;
        case 3:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SettingsPage()),
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Prayers Page')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _changeTab,
        selectedItemColor: Color.fromARGB(255, 0, 0, 139),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.mosque), label: "Prayers"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Quran"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
