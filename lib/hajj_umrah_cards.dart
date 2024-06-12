import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class CardPage extends StatelessWidget {
  final List<CardItem> cards = [
    CardItem(
      title: 'الحج والعمرة',
      imageUrl: 'https://t4.ftcdn.net/jpg/06/31/63/99/360_F_631639935_g8VR52DddUOR7vwXZfbUXdkGZnQd3LHG.jpg',
      websiteUrl: 'https://www.geeksforgeeks.org/flutter-play-youtube-video/',
    ),
    CardItem(
      title: 'دليل العمرة الأساسي',
      imageUrl: 'https://danafashion.ca/cdn/shop/articles/mecca-umrah.jpg?v=1647451336',
      websiteUrl: 'https://www.example.com/card2',
    ),
    CardItem(
      title: 'دليل الحج الأساسي',
      imageUrl: 'https://miro.medium.com/v2/resize:fit:612/1*Zx9xp5hIIpsnoUS-eFXjpQ.jpeg',
      websiteUrl: 'https://www.example.com/card3',
    ),
    CardItem(
      title: 'كيفية لبس الإحرام',
      imageUrl: 'https://t4.ftcdn.net/jpg/01/58/45/69/360_F_158456939_x8O2FBKmYoHwIXRggOiNe6BNmDhw5tKs.jpg',
      websiteUrl: 'https://www.example.com/card4',
    ),
    CardItem(
      title: 'العناصر الموصى بها',
      imageUrl: 'https://cdn.mawasim.com/wp-content/uploads/2021/03/img-how-to-perform-hajj.jpg',
      websiteUrl: 'https://www.example.com/card5',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الحج والعمرة'),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: ()
        {
          Navigator.pop(context);
        },),
      ),
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              _launchURL(cards[index].websiteUrl);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      cards[index].imageUrl,
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        cards[index].title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        
      ),
    );
  }


  _launchURL(String url) async {
  var url1 = Uri.parse(url);
  if (await canLaunchUrl(url1)) {
    await launchUrl(url1);
  } else {
    throw 'Could not launch $url';
  }
  }


  
//   _launchURLApp() async {
//   var url = Uri.parse(link);
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
}

class CardItem {
  final String title;
  final String imageUrl;
  final String websiteUrl;

  CardItem({
    required this.title,
    required this.imageUrl,
    required this.websiteUrl,
  });
}
