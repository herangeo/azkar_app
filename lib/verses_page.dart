import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verses extends StatefulWidget {
  int countVerses;


  Verses({required this.countVerses});


  @override
  State<Verses> createState() => _VersesState();
}

class _VersesState extends State<Verses> {
  List<dynamic> versesData = [];
  int count = 0;

  @override
  void initState() {
    super.initState();
    loadVersesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 241, 200),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 198, 241, 200),
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),color: Colors.green,onPressed:()
        {
          Navigator.pop(context);
        } ,),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
            ),

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                count < versesData.length ? versesData[widget.countVerses]['verse_text'] : 'No data',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.green
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loadVersesData() async {
    String jsonText = await rootBundle.loadString('assets/data/verses.json');
    Map<String, dynamic> jsonData = json.decode(jsonText);

    if (jsonData.containsKey('verses')) {
      setState(() {
        versesData = jsonData['verses'];
      });
    }
  }
}
