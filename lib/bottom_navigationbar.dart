import 'package:azkar_app/athkar_page.dart';
import 'package:flutter/material.dart';

class BNavigation extends StatelessWidget {
  const BNavigation ({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AthkarPage .selectedIndexNotifier,
      builder: (BuildContext context, int updatedIndex, Widget?_){
        return  
        BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 0, 0, 139),
          unselectedItemColor: Colors.grey,
          currentIndex: updatedIndex,
          onTap: (newIndex)
          {
            AthkarPage .selectedIndexNotifier.value=newIndex;
          },
          items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Athkar"),
        BottomNavigationBarItem(
          icon: Icon(Icons.notes),
        label: "My Athkar"),
      ]);
      },

    );
  }
}