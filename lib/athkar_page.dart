import 'package:azkar_app/bottom_navigationbar.dart';
import 'package:azkar_app/prayers_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:azkar_app/create_athkar_page.dart';
import 'package:azkar_app/inbuilt_athkar_page.dart';
import 'package:azkar_app/bottom_bottom_navigation.dart';

class AthkarPage extends StatefulWidget {
  AthkarPage({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  @override
  State<AthkarPage> createState() => _AthkarPageState();
}

class _AthkarPageState extends State<AthkarPage> {
  final List<Widget> _pages = [
    InbuiltAthkar(),
    CreateAthkar(),
  ];

  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    switch (index) {
      case 0:
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PrayersPage()), // Replace PrayersPage with your actual prayers screen
        );
        break;
      case 2:
        // Navigate to the Quran page
        break;
      case 3:
        // Navigate to the settings page
        break;
    }
    });
  }

  final List<String> carouselItems = [
    "Today's Dua",
    "Today's Verse",
    "Share App",
    "Follow us",
    "Contact Us",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: BNavigation(),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: carouselItems.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 139),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(i, 
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Expanded(
              child: ValueListenableBuilder<int>(
                valueListenable: AthkarPage.selectedIndexNotifier,
                builder: (context, selectedIndex, _) {
                  return _pages[selectedIndex];
                },
              ),
            ),
          ],
        ),
      ),
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
