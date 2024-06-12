import 'dart:convert';
import 'package:azkar_app/ad_mob_service.dart';
import 'package:azkar_app/adjust_timings.dart';
import 'package:azkar_app/athkar_page.dart';
import 'package:azkar_app/quran_page.dart';
import 'package:azkar_app/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';


class PrayersPage extends StatefulWidget {
  const PrayersPage({Key? key}) : super(key: key);

  @override
  State<PrayersPage> createState() => _PrayersPageState();
}

class _PrayersPageState extends State<PrayersPage> {
  int _selectedTab = 1;
  Map<String, String> prayerTimings = {};
  
  BannerAd? _banner;
  InterstitialAd? _interstitialAd;


  @override
  void initState() {
    super.initState();
    _fetchPrayerTimings();
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

Future<void> _fetchPrayerTimings() async {
  try {
    // Position position = await Geolocator.getCurrentPosition(
    //   desiredAccuracy: LocationAccuracy.high,
    // );

    // getCityNameFromPosition(position);

    // double latitude = position.latitude;
    // double longitude = position.longitude;

    DateTime currentDate = DateTime.now();

    String formattedDate =
        '${currentDate.year}-${currentDate.month}-${currentDate.day}';

    final response = await http.get(Uri.parse(
        'https://api.aladhan.com/v1/timings/$formattedDate?latitude=12.9716&longitude=77.5946&method=2'));
        
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['data'] != null && data['data']['timings'] != null) {
        setState(() {
          prayerTimings =
              Map<String, String>.from(data['data']['timings']);
        });
      }
    } else {
      throw Exception('Failed to load prayer timings');
    }
  } catch (e) {
    // Check if the error is due to denied location permission
    if (e is PermissionDeniedException) {
      // Show a Snackbar to inform the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Permission denied to access device location.'),
        ),
      );
    } else {
      print('Error fetching prayer timings: $e');
    }
  }
}


  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    switch (index) {
      case 0:
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AthkarPage()), // Replace PrayersPage with your actual prayers screen
        );
        break;
      case 1:
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => PrayersPage()), // Replace PrayersPage with your actual prayers screen
        // );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AyahList()), // Replace PrayersPage with your actual prayers screen
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingsPage()), // Replace PrayersPage with your actual prayers screen
        );
        break;
    }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 198, 241, 200),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 198, 241, 200),
        leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: const Color.fromARGB(255, 198, 241, 200),) ,onPressed: (){

        },),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: prayerTimings.isNotEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     SizedBox(height: 2,),

                    PrayerTimingCard(
                      title: 'الفجر',
                      timing: prayerTimings['Fajr'],
                      icon: Icons.nightlight_round,
                    ),
                    PrayerTimingCard(
                      title: 'شروق الشمس',
                      timing: prayerTimings['Sunrise'],
                      icon: Icons.wb_sunny_rounded,
                    ),
                    PrayerTimingCard(
                      title: 'الظهر',
                      timing: prayerTimings['Dhuhr'],
                      icon: Icons.brightness_5_rounded,
                    ),
                    PrayerTimingCard(
                      title: 'العصر',
                      timing: prayerTimings['Asr'],
                      icon: Icons.wb_cloudy_rounded,
                    ),
                    PrayerTimingCard(
                      title: 'غروب',
                      timing: prayerTimings['Sunset'],
                      icon: Icons.brightness_4_rounded,
                    ),
                    PrayerTimingCard(
                      title: 'المغرب',
                      timing: prayerTimings['Maghrib'],
                      icon: Icons.brightness_4_rounded,
                    ),
                    PrayerTimingCard(
                      title: 'العشاء',
                      timing: prayerTimings['Isha'],
                      icon: Icons.nightlight_round,
                    ),
                  ],
                )
              : CircularProgressIndicator(),
        ),
      ),
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
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> AdjustTime(
        fajr: prayerTimings['Fajr'] ?? '',
        dhuhr: prayerTimings['Dhuhr'] ?? '',
        sunrise: prayerTimings['Sunrise'] ?? '',
        asr: prayerTimings['Asr'] ?? '',
        sunset: prayerTimings['Sunset'] ?? '',
        maghrib: prayerTimings['Maghrib'] ?? '',
        isha: prayerTimings['Isha'] ?? '',
             )));

          },
          icon: Icon(Icons.add),
          label: Text('يُعدِّل'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
  
// void getCityNameFromPosition(Position position) async {
//   double latitude = position.latitude;
//   double longitude = position.longitude;
  
//     try {
//       List<Placemark>? placemarks = await placemarkFromCoordinates(latitude, longitude);
//       if (placemarks != null && placemarks.isNotEmpty) {
//         Placemark placemark = placemarks[0];
//         String? cityName = placemark.locality;
//         if (cityName != null) {
//           print('City Name: $cityName');
//         } else {
//           print('No city name found for the provided coordinates.');
//         }
//       } else {
//         print('No placemarks found for the provided coordinates.');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//   }


}


class PrayerTimingCard extends StatelessWidget {
  final String title;
  final String? timing;
  final IconData icon;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  PrayerTimingCard({
    required this.title,
    required this.timing,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8, // Adjust the width here
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      icon,
                      size: 36,
                      color: Colors.green,
                    ),
                    SizedBox(width: 15),
                    Text(
                      '$title: ',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green[900]),
                    ),
                    Text(timing ?? 'Not Available',style: TextStyle(color: Colors.green[900]),),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    _scheduleNotification(context, title, timing);
                  },
                  icon: Icon(Icons.alarm_add,color: Colors.black,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
Future<void> _scheduleNotification(
    BuildContext context, String title, String? timing) async {
  if (timing == null) return;

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Initialize time zones
  tzdata.initializeTimeZones();
  // Set the local location
  tz.setLocalLocation(tz.getLocation('Asia/Kolkata'));

  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'channel_id',
    'Channel Name',
    importance: Importance.max,
    priority: Priority.high,
  );

  // Correct import for iOSNotificationDetails
  // var iOSPlatformChannelSpecifics = IOSNotificationDetails();
  
  var platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    // iOS: iOSPlatformChannelSpecifics,
  );

  // Parsing timing string to get hour and minute
  List<String> timeParts = timing.split(':');
  int hour = int.parse(timeParts[0]);
  int minute = int.parse(timeParts[1]);

  // Getting current date
  DateTime now = DateTime.now();

  // Scheduling notification for today at prayer time
  tz.TZDateTime scheduledTime = tz.TZDateTime(
    tz.local,
    now.year,
    now.month,
    now.day,
    hour,
    minute,
  );

  await flutterLocalNotificationsPlugin.zonedSchedule(
    0,
    'Prayer Reminder',
    'It\'s time for $title prayer!',
    scheduledTime,
    platformChannelSpecifics,
    androidAllowWhileIdle: true,
    uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
    matchDateTimeComponents: DateTimeComponents.time,
  );

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('ضبط المنبه ل $title الصلاة في $timing.'),
    ),
  );
}
}
