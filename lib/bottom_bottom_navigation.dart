import 'package:flutter/material.dart';


class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // Number of columns in the grid
      crossAxisSpacing: 10.0, // Spacing between columns
      mainAxisSpacing: 10.0, // Spacing between rows
      padding: EdgeInsets.all(10.0), // Padding around the grid
      children: List.generate(20, (index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.green
          ),
          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
      }),
    );
  }
}
