import 'package:flutter/material.dart';

class InbuiltAthkar extends StatelessWidget {
  const InbuiltAthkar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10.0,),
              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 234, 199, 95),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.sunny,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Morning Athkar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
               GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 95, 218, 234),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.night_shelter,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Evening Athkar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 228, 45, 57),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.bed,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Sleep Athkar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 204, 64, 219),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.sunny_snowing,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Waking Up Athkar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 54, 176, 213),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.dark_mode,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Duas',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 210, 182, 110),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.dark_mode_outlined,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('After Prayers',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 118, 194, 114),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.label_important,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Surah Al-Kahf',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 214, 33, 121),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.done_rounded,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Counter-Tasbeeh',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 50, 209, 69),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.star,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Throne Verse',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 234, 188, 101),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.nightlight,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Surah Al-Mulk',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 233, 100, 11),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.mode_night,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Surah Yaseen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 66, 79, 220),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.book,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Al-Raqya From Quran',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 66, 79, 220),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.book,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Al-Raqya From Sunna',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 229, 17, 63),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.person_pin,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Prophetic Biography',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 204, 64, 219),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.book_online,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Dua From Quran',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Colors.black,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.format_list_numbered_outlined,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Benefits of Azkar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                              GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 222, 175, 93),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.numbers,color: Colors.white,),
                          SizedBox(width: 12.0),
                          Text('Names of Allah',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
                                            GestureDetector(
                onTap: () {
                  print('card');
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 20,
                    color: Color.fromARGB(255, 255, 252, 252),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.square,color: Colors.black,),
                          SizedBox(width: 12.0),
                          Text('Hajj and Umrah',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
