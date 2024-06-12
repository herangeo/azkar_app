import 'dart:async';
import 'dart:convert';
import 'package:azkar_app/ad_mob_service.dart';
import 'package:azkar_app/athkar_page.dart';
import 'package:azkar_app/prayers_page.dart';
import 'package:azkar_app/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart' as audioplayers; // Alias for audioplayers
import 'package:flutter/services.dart';
import 'package:audio_session/audio_session.dart';
import 'package:just_audio/just_audio.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';


class AyahList extends StatefulWidget {
  const AyahList({Key? key}) : super(key: key);

  @override
  State<AyahList> createState() => _AyahListState();
}



class _AyahListState extends State<AyahList> {

//   List<Map<String, dynamic>> ayahs = [];
//   List<Map<String, dynamic>> ayahsPage = [];

//   List<Map<String, dynamic>> ayahsArab = [];
//   List<Map<String, dynamic>> ayahsPageArab = [];

//   List <String> languages = ['ar','en'];

//   final _player = AudioPlayer();


//   Future<void> _init() async {
//     // Inform the operating system of our app's audio attributes etc.
//     // We pick a reasonable default for an app that plays speech.
//     final session = await AudioSession.instance;
//     await session.configure(const AudioSessionConfiguration.speech());
//     // Listen to errors during playback.
//     _player.playbackEventStream.listen((event) {},
//         onError: (Object e, StackTrace stackTrace) {
//       print('A stream error occurred: $e');
//     });
//     // Try to load audio from a source and catch any errors.
//     try {
//       // AAC example: https://dl.espressif.com/dl/audio/ff-16b-2c-44100hz.aac
//       await _player.setAudioSource(AudioSource.uri(Uri.parse(
//           "https://download.quranicaudio.com/qdc/abdul_baset/mujawwad/1.mp3")));
//     } on PlayerException catch (e) {
//       print("Error loading audio source: $e");
//     }
//   }


//   int count = 1;
//   int x=0;

//   @override
//   void initState() {
//     super.initState();
//     _fetchAyahs();
//     _init();
//   }

//     @override
//   void dispose() {
//     _player.dispose();
//     super.dispose();
//   }

//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     if (state == AppLifecycleState.paused) {
//       _player.stop();
//     }
//   }


//   Future<void> _fetchAyahs() async {
//     try {
//       final response = await http.get(Uri.parse(
//           'https://api.alquran.cloud/v1/page/$count/en.asad'));

//       final response_arab = await http.get(Uri.parse(
//           'https://api.alquran.cloud/v1/page/$count/${languages[x]}.asad'));



//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         if (data['data'] != null && data['data']['ayahs'] != null) {
//           final List<dynamic> fetchedAyahs = data['data']['ayahs'];
//           fetchedAyahs.forEach((ayah) {
//             ayahs.add({
//               'number': ayah['number'],
//               'text': ayah['text'],
//             });
//           });

//           final  int fetchedAyahsPage = data['data']['number'];

//             ayahsPage.add({
//               'number': fetchedAyahsPage,
//             });

//           setState(() {});
//         }
//       } else {
//         throw Exception('Failed to load Quran in english');
//       }


      
//       if (response_arab.statusCode == 200) {
//         final data = jsonDecode(response_arab.body);
//         if (data['data'] != null && data['data']['ayahs'] != null) {
//           final List<dynamic> fetchedAyahsArab = data['data']['ayahs'];
//           fetchedAyahsArab.forEach((ayah) {
//             ayahsArab.add({
//               'number': ayah['number'],
//               'text': ayah['text'],
//             });
//           });

//           final  int fetchedAyahsPageArab = data['data']['number'];

//             ayahsPageArab.add({
//               'number': fetchedAyahsPageArab,
//             });

//           setState(() {});
//         }
//       } else {
//         throw Exception('Failed to load Quran in Arab');
//       }
//     } catch (e) {
//       print('Error fetching Quran: $e');
//     }
//   }

  int _selectedTab = 2;
  BannerAd? _banner;
  InterstitialAd? _interstitialAd;

  @override
  void initState() {

    super.initState();
    _createBannerAd();
    _createInterstitialAd();
    
  }

    void _createBannerAd() {
    _banner = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: AdMobService.bannerAdunitId!,
      listener:AdMobService.bannerListener ,
       request: const AdRequest(),)..load();
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

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
      switch (index) {
        case 0:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AthkarPage()),
          );
          break;
        case 1:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const PrayersPage()),
          );
          break;
        case 2:

          break;
        case 3:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const SettingsPage()),
          );
          break;
      }
    });
  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// appBar: AppBar(
//   actions: [
//     Row(
//       children: [
//         FloatingActionButton(
//           onPressed: () {
//             setState(() {
//              ayahsArab.clear();
//              ayahsPageArab.clear();
//               ayahs.clear(); 
//               ayahsPage.clear();
//               x=1;
//               _fetchAyahs();
//             });
//           },
//           mini: true,
//           child: const Text(
//             'Eng',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//           backgroundColor: Colors.white,
//           shape: RoundedRectangleBorder(
//             side: const BorderSide(
//               color: Colors.black, 
//               width: 1,
//             ),
//             borderRadius: BorderRadius.circular(5), 
//           ),
//         ),
//         const SizedBox(width: 35), 
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: FloatingActionButton(
//             onPressed: () {
//               setState(() {
//               ayahsArab.clear();
//               ayahsPageArab.clear();
//               ayahs.clear(); 
//               ayahsPage.clear();
//               x=0;
//               _fetchAyahs();
//               });
//             },
//             mini: true,
//             child: const Text(
//               'Arab',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             backgroundColor: Colors.white,
//             shape: RoundedRectangleBorder(
//               side: const BorderSide(
//                 color: Colors.black, 
//                 width: 1, 
//               ),
//               borderRadius: BorderRadius.circular(5), 
//             ),
//           ),
//         ),
//       ],
//     ),
//   ],
// ),

//       body: Center(
//         child: _buildAyahList(),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           FloatingActionButton(
//             onPressed: () {  
//             setState(() {
//               ayahsArab.clear();
//               ayahsPageArab.clear();
//               ayahs.clear(); // Clear ayahs list
//               ayahsPage.clear();
//               count--;
//               _fetchAyahs();
//             });
//             },
//             mini: true,
//             child: const Icon(Icons.arrow_back_ios),
//             backgroundColor: const Color.fromARGB(255, 255, 251, 251),
            
//           ),
//           const SizedBox(width: 20,),
//           FloatingActionButton(onPressed: (){
//             _player.play();
//           },
//           mini:true,
//           backgroundColor: const Color.fromARGB(255, 255, 251, 251),
//           child: const Icon(Icons.play_arrow),
          
//           ),
//           const SizedBox(width: 13,),
//           FloatingActionButton(onPressed: (){
//              _player.stop();
//           },
//           mini:true,
//           backgroundColor: const Color.fromARGB(255, 255, 251, 251),
//           child: const Icon(Icons.pause),
          
//           ),
//           const SizedBox(width: 20,),
//           FloatingActionButton(
//             onPressed:()
//           {
//           setState(() {
//               ayahsArab.clear();
//               ayahsPageArab.clear();
//               ayahs.clear(); 
//               ayahsPage.clear();
//               count++;
//               _fetchAyahs();

//             }); 
//           },
//           mini: true,
//           child: const Icon(Icons.arrow_forward_ios),
//           backgroundColor: const Color.fromARGB(255, 255, 251, 251),          
//           )
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedTab,
//         onTap: _changeTab,
//         selectedItemColor: const Color.fromARGB(255, 0, 0, 139),
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.mosque), label: "Prayers"),
//           BottomNavigationBarItem(icon: Icon(Icons.book), label: "Quran"),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
//         ],
//       ),
//     );
//   }

// Widget _buildAyahList() {
//   if (ayahs.isEmpty) {
//     return const CircularProgressIndicator(); // or any other loading indicator
//   } else {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Text(
//           'Page ${ ayahsPageArab.isNotEmpty ?  ayahsPageArab[0]['number'] : ''}',
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//           ),
//         ),
//         Expanded( // Wrap ListView.builder with Expanded
//           child: ListView.builder(
//             itemCount: ayahs.length,
//             itemBuilder: (BuildContext context, int index) {
//               final verse = ayahsArab[index];
//               return ListTile(
                
//                 title: Center(
//                   child: Center(
//                     child: Text(
//                       '${verse['number']} : ${verse['text']}',
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
  
//     );
//   }
// }

  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://www.youtube.com/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse('https://read.quranmajeed.com/'));



@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 198, 241, 200),
    appBar: AppBar(
      leading: IconButton(icon:Icon(Icons.arrow_back_ios,color:const Color.fromARGB(255, 198, 241, 200) ,) ,onPressed:()
      {

      } ,),
      backgroundColor: const Color.fromARGB(255, 198, 241, 200),
    ),
    body: WebViewWidget(controller: controller),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _banner == null
                ? Container()
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

}


