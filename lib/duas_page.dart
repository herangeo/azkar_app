import 'package:azkar_app/dua_display.dart';
import 'package:flutter/material.dart';

class Duas extends StatelessWidget {
  Duas({Key? key}) : super(key: key);

  // Define a list of duas titles
  final List<String> duaTitles = [
    "عند الذهاب إلى النوم",
    "الاستيقاظ من النوم",
    "دخول الحمام",
    "مغادرة الحمام",
    "بداية الوضوء",
    "اكتمال الوضوء",
    "دخول المسجد",
    "مغادرة المسجد",
    "قبل الوجبات",
    "نسيان تلاوة بسم الله",
    "بعد الوجبات",
    "دعاء قبل السلام",
    "عند مغادرة المنزل",
    "في الرحلة",
    "العودة من الرحلة",
    "عند العطس",
    "سماع شخص يعطس",
    "رد العطاس",
    "دخول السوق",
    "دخول ومغادرة المنزل"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 241, 200),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.green,),onPressed: ()
        {
          Navigator.pop(context);
        },),
        backgroundColor: const Color.fromARGB(255, 198, 241, 200),
        title: const Text('ادعية',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),
      ),
      ),
      body: ListView.builder(
        itemCount: duaTitles.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,            
              child: ListTile(
                title: Text(duaTitles[index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => DuasDisplay(Dua:duaTitles[index] ,))));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Duas(),
  ));
}
