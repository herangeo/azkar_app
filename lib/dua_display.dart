import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DuasDisplay extends StatefulWidget {
  String Dua;

  DuasDisplay({required this.Dua});

  @override
  State<DuasDisplay> createState() => _DuasDisplayState();
}

class _DuasDisplayState extends State<DuasDisplay> {

String duasToDisplay='';

 @override
  void initState() {
    super.initState();
    loadJsonData(); 
  }


Future<void> loadJsonData() async {
  String jsonText = await rootBundle.loadString('assets/data/duas.json');
  Map<String, dynamic> jsonData = json.decode(jsonText);
  
  List<dynamic> duasData = jsonData['duas'];

  String duaTitle = widget.Dua;
  print(duaTitle);

  for (var dua in duasData) {
    if (dua['title'] == duaTitle) {
      print("found");
      setState(() {
        duasToDisplay = '${dua['title']}\n\n ${dua['arabic']}\n\n${dua['english']}';
      });
      break;
    }
    else{
      print("not found");
    }
  }
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 241, 200),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 198, 241, 200),
        title: Text('ادعية',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),leading: IconButton(
        onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.green,)),),
      body: Center(
      child: 
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(duasToDisplay,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight:FontWeight.bold,color: Colors.green),),
          ),
        ),
      )),
    );
  }
}