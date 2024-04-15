import 'package:azkar_app/athkar_page.dart';
import 'package:azkar_app/prayers_page.dart';
import 'package:azkar_app/quran_page.dart';
import 'package:azkar_app/settings_page.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {


int _selectedTab = 0;



  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    switch (index) {
      case 0:
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AthkarPage()));
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PrayersPage()), 
        );
        break;
      case 2:
      Navigator.push(context, MaterialPageRoute(builder: (context)=>QuranPage()));
        break;
      case 3:
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
        break;
    }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _changeTab,
        selectedItemColor: Color.fromARGB(255, 0, 0, 139),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.mosque), label: "Prayers"),
          BottomNavigationBarItem(
            icon: Icon(Icons.book), label: "Quran"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
      
