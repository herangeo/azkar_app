import 'package:flutter/material.dart';


class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _overallCount = 0;
  int _currentCount = 0;

  void _incrementCount() {
    setState(() {
      _overallCount++;
      if (_currentCount == 33) {
        _currentCount = 0;
      } else {
        _currentCount++;
      }
    });
  }

  void _resetCount() {
    setState(() {
      _currentCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 241, 200),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 198, 241, 200),
        title: const Text("33",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
          leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios,color: Colors.green,),
    onPressed: () {
      Navigator.of(context).pop();
    },
  ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
Container(
  decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(10.0)
  ),
  child: const Padding(
    padding: EdgeInsets.all(8.0),
    child: Text(
      " سُبْحَانَ اللّهِ وَ بِحَمْدِهِ",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0,color: Colors.white),
    ),
  ),
),
            const SizedBox(height: 10,),
            const Text("",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.0),),
            const SizedBox(height: 40,),
            Text(
              'الجميع: $_overallCount مرات',
              style: const TextStyle(fontSize: 20.0,color: Colors.green,fontWeight: FontWeight.bold),
              
            ),
            const SizedBox(height: 20.0),
Container(
  width: 100,
  height: 100,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.white,
      width: 2.0,
    ),
  ),
  child: Center(
    child: Text(
      '$_currentCount',
      style: const TextStyle(fontSize: 50.0,color: Colors.green),
    ),
  ),
),

            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  
                  ),
                  onPressed: _incrementCount,
                  child: const Text('زيادة راتب',style:TextStyle(color:Colors.white ,fontWeight: FontWeight.bold)),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  onPressed: _resetCount,
                  child: const Text('إعادة ضبط',style:TextStyle(color:Colors.white ,fontWeight: FontWeight.bold),)
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
