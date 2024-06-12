import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateAthkar extends StatefulWidget {
  const CreateAthkar({Key? key}) : super(key: key);

  @override
  _CreateAthkarState createState() => _CreateAthkarState();
}

class _CreateAthkarState extends State<CreateAthkar> {
List<AthkarItem> _athkarItems = []; // Initialize _athkarItems with an empty list

@override
@override
void initState() {
  super.initState();
  _loadAthkarItems();
}

Future<void> _loadAthkarItems() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String>? athkarStringList = prefs.getStringList('athkar');
  if (athkarStringList != null) {
    setState(() {
      _athkarItems = athkarStringList
          .map((athkarString) => AthkarItem.fromJson(jsonDecode(athkarString)))
          .toList();
    });
  } else {
    setState(() {
      _athkarItems = [];
    });
  }
}

Future<void> _saveAthkarItems() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> athkarStringList =
      _athkarItems.map((athkarItem) => jsonEncode(athkarItem.toJson())).toList();
  await prefs.setStringList('athkar', athkarStringList);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 241, 200),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          _showAddAthkarDialog(context);
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: ListView.builder(
        itemCount: _athkarItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.green,
              child: ListTile(
                leading: const Icon(
                  Icons.view_agenda_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  _athkarItems[index].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  _showAthkarDetailDialog(context, _athkarItems[index]);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  void _showAddAthkarDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String name = '';
        String athkar = '';

        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 198, 241, 200),
          title: const Text(
            'Add Athkar',
            style: TextStyle(color: Colors.green),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration:
                    const InputDecoration(labelText: 'Name of Athkar'),
                onChanged: (value) {
                  name = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Athkar'),
                onChanged: (value) {
                  athkar = value;
                },
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: const Text('Cancel', style: TextStyle(color: Colors.white)))),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _athkarItems.add(AthkarItem(name: name, athkar: athkar));
                });
                _saveAthkarItems(); // Save after adding new item
                Navigator.of(context).pop();
              },
              child: Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: const Text('Save', style: TextStyle(color: Colors.white)))),
            ),
          ],
        );
      },
    );
  }

  void _showAthkarDetailDialog(BuildContext context, AthkarItem athkarItem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 198, 241, 200),
          title: Text(athkarItem.name,style: TextStyle(color: Colors.green),),
          content: Text(athkarItem.athkar),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: const Text('Close', style: TextStyle(color: Colors.white))))),
          ],
        );
      },
    );
  }
}

class AthkarItem {
  final String name;
  final String athkar;

  AthkarItem({required this.name, required this.athkar});

  // Convert the AthkarItem to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'athkar': athkar,
    };
  }

  // Create AthkarItem from JSON
  factory AthkarItem.fromJson(Map<String, dynamic> json) {
    return AthkarItem(
      name: json['name'],
      athkar: json['athkar'],
    );
  }
}
