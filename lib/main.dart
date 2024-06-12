import 'package:azkar_app/ad_mob_service.dart';
import 'package:azkar_app/athkar_page.dart';
import 'package:azkar_app/audio_example.dart';
import 'package:azkar_app/bottom_bottom_navigation.dart';
import 'package:azkar_app/counter_page.dart';
import 'package:azkar_app/example.dart';
import 'package:azkar_app/prophetic_biography.dart';
import 'package:azkar_app/quran_page.dart';
import 'package:azkar_app/splash_screen.dart';
import 'package:azkar_app/web_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Future.delayed(const Duration(seconds: 2));
  // FlutterNativeSplash.remove();
   MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      home:  Webview(),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {

    super.initState();
    _createBannerAd();
    _createInterstitialAd();
    
  }

  BannerAd? _banner;
  InterstitialAd? _interstitialAd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:const Center(child: Text("ads")),
      bottomNavigationBar: _banner == null 
      ? const Center(child: Text("Ad is not loading"))
       : Container(
        margin: const EdgeInsets.only(bottom: 12),
        height: 52,
        child: AdWidget(ad: _banner!),
      ),
    );
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
}
