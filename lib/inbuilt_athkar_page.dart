import 'package:azkar_app/counter_page.dart';
import 'package:azkar_app/duas_page.dart';
import 'package:azkar_app/hajj_umrah_cards.dart';
import 'package:azkar_app/names_allahs_grid.dart';
import 'package:azkar_app/page_details_athkar.dart';
import 'package:azkar_app/prophetic_biography.dart';
import 'package:azkar_app/surah_al_kahf.dart';
import 'package:azkar_app/surah_al_mulk.dart';
import 'package:azkar_app/surah_yasin.dart';
import 'package:flutter/material.dart';

class InbuiltAthkar extends StatelessWidget {
  const InbuiltAthkar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 241, 200),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayIdPage(id: 1,)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width:160,
                        child: const Card(
                          elevation: 20,
                          color: Color.fromARGB(255, 234, 151, 95),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Icon(Icons.sunny,color: Colors.white,),
                                SizedBox(width: 12.0),
                                Text('أذكار الصباح',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                    ),
                  ),
                GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayIdPage(id: 2,)));                },
                child:  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width:160,

                    child: const Card(
                      elevation: 20,
                      color: Color.fromARGB(255, 95, 218, 234),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(Icons.night_shelter,color: Colors.white,),
                            SizedBox(width: 12.0),
                            Text('أذكار المساء',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ),
              ),
                ],
              ),
               
                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayIdPage(id: 3,)));                },
                    child:  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width:160,

                        child: const Card(
                          elevation: 20,
                          color: Color.fromARGB(255, 228, 45, 57),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Icon(Icons.bed,color: Colors.white,),
                                SizedBox(width: 12.0),
                                Text('النوم اذكار',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                    ),
                                  ),
                GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayIdPage(id: 4,)));                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width:160,

                    child: const Card(
                      elevation: 20,
                      color: Color.fromARGB(255, 204, 64, 219),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(Icons.sunny_snowing,color: Colors.white,),
                            SizedBox(width: 12.0),
                            Text('إيقاظ الأذكار',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ),
              ),
                  ],
                ),

                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Duas()));                },
                                      child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(

                        width:160,
                        child: const Card(
                          elevation: 20,
                          color: Color.fromARGB(255, 54, 176, 213),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Icon(Icons.dark_mode,color: Colors.white,),
                                SizedBox(width: 12.0),
                                Text('ادعية',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                                      ),
                                    ),
                GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayIdPage(id: 5,)));                },
                child:   Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 160,
                    child: const Card(
                      elevation: 20,
                      color: Color.fromARGB(255, 210, 182, 110),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(Icons.dark_mode_outlined,color: Colors.white,),
                            SizedBox(width: 12.0),
                            Text('بعد الصلاة',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ),
              ),
                    ],
                  ),

                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                                  onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SurahAlKahf()));               
                                                    },
                                                  child:Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Container(
                                                      width: 160,
                                                      child: const Card(
                                                        elevation: 20,
                                                        color: Color.fromARGB(255, 118, 194, 114),
                                                        child: Padding(
                                                          padding: EdgeInsets.all(15.0),
                                                          child: Row(
                                                            children: [
                                                              Icon(Icons.label_important,color: Colors.white,),
                                                              SizedBox(width: 12.0),
                                                              Text('سورة الكهف',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    
                                                  ),
                                                ),
                GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CounterPage()));                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 160,
                    child: const Card(
                      elevation: 20,
                      color: Color.fromARGB(255, 214, 33, 121),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(Icons.done_rounded,color: Colors.white,),
                            SizedBox(width: 12.0),
                            Text('عداد ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ),
              ),
                                ],

                              ),

                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayIdPage(id: 6,)));                },
                    child:  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width:160,
                        child: const Card(
                          elevation: 20,
                          color: Color.fromARGB(255, 50, 209, 69),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Icon(Icons.star,color: Colors.white,),
                                SizedBox(width: 12.0),
                                Text('آية العرش',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                    ),
                                  ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SurahAlMulk()));                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 160,
                    child: const Card(
                      elevation: 20,
                      color: Color.fromARGB(255, 234, 188, 101),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(Icons.nightlight,color: Colors.white,),
                            SizedBox(width: 12.0),
                            Text('سورة الملك',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                  ],
                ),

              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SurahYasin()));                },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 160,
                        child: const Card(
                          elevation: 20,
                          color: Color.fromARGB(255, 233, 100, 11),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Icon(Icons.mode_night,color: Colors.white,),
                                SizedBox(width: 12.0),
                                Text('سورة ياسين',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                    ),
                  ),
                  GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const YoutubePlayerScreen()));                
                  },
                child: 
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 160,
                    child: const Card(
                      elevation: 20,
                      color: Color.fromARGB(255, 229, 17, 63),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(Icons.person_pin,color: Colors.white,),
                            SizedBox(width: 12.0),
                            Text('السيرة النبوية',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ),
              ),
        
                ],
              ),
              //                 GestureDetector(
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayIdPage(id: 12,)));                },
              //   child: const Padding(
              //     padding: EdgeInsets.all(10.0),
              //     child: Card(
              //       elevation: 20,
              //       color: Color.fromARGB(255, 66, 79, 220),
              //       child: Padding(
              //         padding: EdgeInsets.all(15.0),
              //         child: Row(
              //           children: [
              //             Icon(Icons.book,color: Colors.white,),
              //             SizedBox(width: 12.0),
              //             Text('Al-Raqya From Quran',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              //           ],
              //         ),
              //       ),
              //     ),
                  
              //   ),
              // ),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayIdPage(id: 13,)));                },
              //   child: const Padding(
              //     padding: EdgeInsets.all(10.0),
              //     child: Card(
              //       elevation: 20,
              //       color: Color.fromARGB(255, 66, 79, 220),
              //       child: Padding(
              //         padding: EdgeInsets.all(15.0),
              //         child: Row(
              //           children: [
              //             Icon(Icons.book,color: Colors.white,),
              //             SizedBox(width: 12.0),
              //             Text('Al-Raqya From Sunna',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              //           ],
              //         ),
              //       ),
              //     ),
                  
              //   ),
              // ),
                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Duas()));                },
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(10.0),
                                                    child: Container(
                                                      width: 160,
                                                      child: const Card(
                                                        elevation: 20,
                                                        color: Color.fromARGB(255, 204, 64, 219),
                                                        child: Padding(
                                                          padding: EdgeInsets.all(15.0),
                                                          child: Row(
                                                            children: [
                                                              Icon(Icons.book_online,color: Colors.white,),
                                                              SizedBox(width: 12.0),
                                                              Text('دعاء',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    
                                                  ),
                                                ),
                                          GestureDetector(
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayIdPage(id: 7,)));                },
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              width: 160,
                                              child: const Card(
                                                elevation: 20,
                                                color: Colors.black,
                                                child: Padding(
                                                  padding: EdgeInsets.all(15.0),
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.format_list_numbered_outlined,color: Colors.white,),
                                                      SizedBox(width: 12.0),
                                                      Text('فوائد الأذكار',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            
                                          ),
                                        ),
                                ],
                              ),

                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AllahNamesScreen()));                },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 160,
                        child: const Card(
                          elevation: 20,
                          color: Color.fromARGB(255, 222, 175, 93),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Icon(Icons.numbers,color: Colors.white,),
                                SizedBox(width: 12.0),
                                Text('اسم الله',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                    ),
                                  ),
                GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CardPage())); 
                                 },
                child:  Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 160,
                    child: const Card(
                      elevation: 20,
                      color: Color.fromARGB(255, 255, 252, 252),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(Icons.square,color: Colors.black,),
                            SizedBox(width: 12.0),
                            Text('الحج والعمرة',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ),
              ),
                  ],
                ),

            ],
          ),
        ),
      ),
    );
  }
}
