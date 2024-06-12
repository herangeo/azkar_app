import 'package:flutter/material.dart'; 
import 'package:youtube_player_iframe/youtube_player_iframe.dart'; 

class YoutubePlayerScreen extends StatefulWidget { 
const YoutubePlayerScreen({super.key}); 

@override 
State<YoutubePlayerScreen> createState() => _YoutubePlayerScreenState(); 
} 

class _YoutubePlayerScreenState extends State<YoutubePlayerScreen> { 
// To control the youtube video functionality 
final _controller = YoutubePlayerController(); 
@override 
void initState() { 
	super.initState(); 

	_controller.loadVideoById(videoId: "29iZaR_Y_OE"); 
} 

@override 
Widget build(BuildContext context) { 
	return Scaffold( 
    backgroundColor: const Color.fromARGB(255, 198, 241, 200),
    appBar: AppBar(
      leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.green,) ,
      onPressed: ()
      {
        Navigator.pop(context);
      },),
      backgroundColor:const Color.fromARGB(255, 198, 241, 200) ,
    ),
	body: Padding( 
		padding: const EdgeInsets.all(8.0), 
		
		child: Center( 
		// Youtube player as widget 
		child: YoutubePlayer( 
			controller: _controller, // Controler that we created earlier 
			aspectRatio: 16 / 9,	 // Aspect ratio you want to take in screen 
		), 
		), 
	), 
	); 
} 
}
