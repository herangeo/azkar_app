import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SurahAlKahf extends StatefulWidget {
  const SurahAlKahf({super.key});

  @override
  State<SurahAlKahf> createState() => _SurahAlKahfState();
}

class _SurahAlKahfState extends State<SurahAlKahf> {

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
  ..loadRequest(Uri.parse('https://alqurankarim.net/surah-al-kahf'));

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: WebViewWidget(controller: controller),
  );
}
}