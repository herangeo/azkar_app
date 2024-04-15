import 'package:azkar_app/athkar_page.dart';
import 'package:azkar_app/prayers_page.dart';
import 'package:azkar_app/quran_page.dart';
import 'package:flutter/material.dart';
 // Import your athkar.dart file

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _selectedTab = 3; // Start with the Settings tab selected

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
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => PrayersPage()),
          );
          break;
        case 2:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => QuranPage()),
          );
          break;
        case 3:
          // Already on the Settings page, no need to navigate
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(child: Text('Settings Page')),
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
