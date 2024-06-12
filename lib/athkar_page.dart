import 'dart:convert';  
import 'package:azkar_app/ad_mob_service.dart';
import 'package:azkar_app/bottom_navigationbar.dart';
import 'package:azkar_app/duas_page.dart';
import 'package:azkar_app/prayers_page.dart';
import 'package:azkar_app/quran_page.dart';
import 'package:azkar_app/settings_page.dart';
import 'package:azkar_app/verses_page.dart';
import 'package:azkar_app/web_view.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:azkar_app/create_athkar_page.dart';
import 'package:azkar_app/inbuilt_athkar_page.dart';
import 'package:azkar_app/bottom_bottom_navigation.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:share_plus/share_plus.dart';

class AthkarPage extends StatefulWidget {
  AthkarPage({Key? key}) : super(key: key);

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  @override
  State<AthkarPage> createState() => _AthkarPageState();
}

class _AthkarPageState extends State<AthkarPage> {

  BannerAd? _banner;
  InterstitialAd? _interstitialAd;

  List <dynamic> data=[];
  int count=0;
  int countVerses = 0;


@override
void initState() {
  super.initState();
  getCount().then((value) {
    setState(() {
      count = value;
    });
  });
  getCountVerses().then((value) {
    setState(() {
      countVerses = value;
    });
  });
  loadJsonData();
  loadVersesData();

  _createBannerAd();
  _createInterstitialAd();


}



  final List<Widget> _pages = [
    const InbuiltAthkar(),
    const CreateAthkar(),
  ];

  int _selectedTab = 0;

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    switch (index) {
      case 0:
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  AthkarPage()), // Replace PrayersPage with your actual prayers screen
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PrayersPage()), // Replace PrayersPage with your actual prayers screen
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  AyahList()), // Replace PrayersPage with your actual prayers screen
        );        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SettingsPage()), // Replace PrayersPage with your actual prayers screen
        );        break;
    }
    });
  }

  

Future<void> loadJsonData() async {
  String jsonText = await rootBundle.loadString('assets/data/duas.json');
  Map<String, dynamic> jsonData = json.decode(jsonText);
  
  List<dynamic> duasData = jsonData['duas'];

  setState(() {
    data = duasData;
    if (count < 20) {
      count++;
      saveCount(count);
    } else {
      count = 0;
      saveCount(count);
    }
    if (duasData.isNotEmpty) {
      carouselItems[0] = duasData[count]['arabic'];
      print(carouselItems[0]);
      print(count);
    }
  });
}

Future<void> loadVersesData() async {
  String jsonText = await rootBundle.loadString('assets/data/verses.json');
  Map<String, dynamic> jsonData = json.decode(jsonText);
  
  List<dynamic> versesData = jsonData['verses'];

  setState(() {
    if (countVerses < 20) {
      countVerses++;
      saveCountVerses(countVerses);
    } else {
      countVerses = 0;
      saveCountVerses(countVerses);
    }
    if (versesData.isNotEmpty) {
      carouselItems[1] = versesData[countVerses]['verse_text'];
      print(carouselItems[1]);
    }
  });
}


Future<void> saveCount(int count) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();


    await prefs.setInt('count', count);
  


}


Future<int> getCount() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getInt('count') ?? 0; // Default to 0 if count is not found
}

Future<void> saveCountVerses(int count) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.setInt('countVerses', countVerses);
   
}

Future<int> getCountVerses() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getInt('countVerses') ?? 0; // Default to 0 if count is not found
}


  final List<String> carouselItems = [
    "",
    "",
    "",
    "",
    "oohlivetv@gmail.com",
  ];

    final List<String> carouselItemsHeadings = [
    "دعاء اليوم",
    "آية اليوم",
    "شارك التطبيق",
    "تابعنا",
    "اتصل بنا",
  ];

    void _shareApp() {
    final RenderBox box = context.findRenderObject() as RenderBox;
    Share.share('Check out this amazing app!', sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 198, 241, 200),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 198, 241, 200),
        leading: Icon(Icons.arrow_back_ios,color:const Color.fromARGB(255, 198, 241, 200) ,),

        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: BNavigation(),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10.0,),
GestureDetector(
  onTap: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color.fromARGB(255, 198, 241, 200),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20,),
              Container(
                width: 150,
                child: ElevatedButton(
                  
                  onPressed: () {
                
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Duas()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    backgroundColor: Colors.green
                 // Adjust padding to make the button bigger
                  ),
                  
                  child: const Text(
                    'دعاء اليوم',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Apply bold text style
                      fontSize: 16, 
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              
              Container(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Verses(countVerses: countVerses,)));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30), 
                     backgroundColor: Colors.green// Adjust padding to make the button bigger
                  ),
                  child: const Text(
                    'آية اليوم',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Apply bold text style
                      fontSize: 16,
                      color: Colors.white // Adjust font size if needed
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),

              Container(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(context: context, 
                    builder: (BuildContext context)
                    {
                      return Dialog(
                        backgroundColor: const Color.fromARGB(255, 129, 203, 132),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 100,),
                            const SizedBox(width: 40,),
                            IconButton(onPressed: (){
                              
                
                            },
                            icon: Icon(Icons.facebook,color:Colors.white),
                            iconSize:50,
                            ),
                          
                            const SizedBox(width: 50,),
                           IconButton(onPressed: (){
                
                            }, 
                            icon: Icon(FontAwesomeIcons.instagram,color: Colors.white,),
                            iconSize:50,
                            )
                            ,const SizedBox(width: 40,),
                            const SizedBox(height: 100,),
                          ],
                        ),
                      );
                    }
                    );
                  },
                  style: ElevatedButton.styleFrom(
                     // Adjust padding to make the button bigger
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    backgroundColor: Colors.green // Adjust padding to make the button bigger
                  ),
                  child: const Text(
                    'تابعنا',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Apply bold text style
                      fontSize: 16, 
                      color: Colors.white// Adjust font size if needed
                    ),
                  ),
                ),
              ),
                            const SizedBox(height: 10,),

              ElevatedButton(
                onPressed: () {
                _shareApp();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                            backgroundColor: Colors.green // Adjust padding to make the button bigger
                ),
                child: const Text(
                  'شارك التطبيق',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // Apply bold text style
                    fontSize: 16,
                    color: Colors.white // Adjust font size if needed
                ),
              ),
            ),
            const SizedBox(height: 20,),

            ],
          ),
        );
      },
    );
  },
  child: CarouselSlider(
    options: CarouselOptions(height: 200.0),
    items: List.generate(carouselItems.length, (index) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 5.0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.green,
                            width: 2,
                          )),
                      child: Text(carouselItemsHeadings[index],
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0)),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Text(
                        carouselItems[index],
                        style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }).toList(),
  ),
),

            Expanded(
              child: ValueListenableBuilder<int>(
                valueListenable: AthkarPage.selectedIndexNotifier,
                builder: (context, selectedIndex, _) {
                  return _pages[selectedIndex];
                },
              ),
            ),
          ],
        ),
      ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _banner == null
                ? const Center(child: Text("Ad is not loading"))
                : Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    height: 52,
                    width: double.infinity,
                    child: AdWidget(ad: _banner!),
                  ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BottomNavigationBar(
                currentIndex: _selectedTab,
                onTap: _changeTab,
                selectedItemColor: Colors.green[800],
                unselectedItemColor: Colors.green[600],
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "بيت",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.mosque),
                    label: "صلوات",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.book),
                    label: "القرآن",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "إعدادات",
                  ),
                ],
              ),
            ),
          ],
        ),

    );
  }
  
 void _createBannerAd() {
    _banner = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: AdMobService.bannerAdunitId!,
      listener: BannerAdListener(
        onAdFailedToLoad: (ad, error) {
          print('Banner Ad failed to load: $error');
        },
      ),
      request: const AdRequest(),
    )..load();
  }

  void _createInterstitialAd()
  {
    InterstitialAd.load(
      adUnitId: AdMobService.interstitialAdUnitId!, 
      request: const AdRequest(),
       adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad)=> _interstitialAd = ad,
         onAdFailedToLoad:(LoadAdError error)=> _interstitialAd = null));
  }
}
