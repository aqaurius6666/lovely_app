import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewScreen extends StatelessWidget {
  const WebviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://ngocanh.cdn.aqaurius6666.space/",
      javascriptMode: JavascriptMode.unrestricted,

    );
  }
}

