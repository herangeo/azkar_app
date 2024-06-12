import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SurahAlMulk extends StatefulWidget {
  const SurahAlMulk({super.key});

  @override
  State<SurahAlMulk> createState() => _SurahAlMulkState();
}

class _SurahAlMulkState extends State<SurahAlMulk> {

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
  ..loadRequest(Uri.parse('https://alqurankarim.net/surah-al-mulk'));

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: WebViewWidget(controller: controller),
  );
}
}