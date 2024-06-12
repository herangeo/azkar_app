import 'package:azkar_app/ad_mob_service.dart';
import 'package:azkar_app/athkar_page.dart';
import 'package:azkar_app/prayers_page.dart';
import 'package:azkar_app/quran_page.dart';
import 'package:azkar_app/settings_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _selectedTab = 3; 
  BannerAd? _banner;
  InterstitialAd? _interstitialAd;// Start with the Settings tab selected


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
            MaterialPageRoute(builder: (context) => PrayersPage()),
          );
          break;
        case 2:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AyahList()),
          );
          break;
        case 3:
          // Already on the Settings page, no need to navigate
          break;
      }
    });
  }

  void _shareApp() {
    final RenderBox box = context.findRenderObject() as RenderBox;
    Share.share('Check out this amazing app!', sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  void _launchUrl(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('إعدادات',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
        actions: [
          IconButton(
            icon: Icon(Icons.share,color: Colors.green,),
            onPressed: _shareApp,
          ),
          
        ],
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: ()
        {
          Navigator.pop(context);
        },),
      ),
      body: ListView(
        children: [
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.green,),
            title: Text('حول التطبيق'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MySettingsPage(id: 1,)));
              // Navigate to About App screen
            },
          ),
          ListTile(
                      trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.green,),
            title: Text('التعليمات'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MySettingsPage(id: 2,)));
            },
          ),
          ListTile(
                      trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.green,),
            title: Text('اتصل بنا'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MySettingsPage(id: 3,)));
              // Navigate to Contact Us screen
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.green,),
            title: Text('تابعونا على X'),
            onTap: () {
              // Replace X with your platform and URL
              _launchUrl('https://example.com');
            },
          ),
          ListTile(
                      trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.green,),
            title: Text('تابعونا على الفيسبوك'),
            onTap: () {
              _launchUrl('https://www.facebook.com/example');
            },
          ),
          ListTile(
                      trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.green,),
            title: Text('متابعتنا على الانستقرام'),
            onTap: () {
              _launchUrl('https://www.instagram.com/example');
            },
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.green,),
            title: Text('سياسة الخصوصية'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MySettingsPage(id: 4,)));
            },
          ),
          ListTile(
                      trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.green,),
            title: Text('شروط الاستخدام'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MySettingsPage(id: 5,)));
            },
          ),
          ListTile(
                      trailing: Icon(Icons.arrow_forward_ios,size: 15,color: Colors.green,),
            title: Text('إعتراف'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MySettingsPage(id: 6,)));
              // Navigate to Acknowledgements screen
            },
          ),
        ],
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
    );
  }
}

class QuranPage {
}
