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
          selectedItemColor: Colors.green[800],
          unselectedItemColor: Colors.green[600],
          currentIndex: updatedIndex,
          onTap: (newIndex)
          {
            AthkarPage .selectedIndexNotifier.value=newIndex;
          },
          items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "اذكار"),
        BottomNavigationBarItem(
          icon: Icon(Icons.notes),
        label: "اذكار بلدي"),
      ]);
      },

    );
  }
}