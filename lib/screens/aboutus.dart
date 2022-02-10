import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutUs extends StatefulWidget {
  final showAppBar;
  const AboutUs({Key? key, this.showAppBar}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  WebViewController? _controller;
  final Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: 'http://logger-india.herokuapp.com/about',
        javascriptMode: JavascriptMode.unrestricted,
        key: UniqueKey(),
        onWebViewCreated: (WebViewController webViewController) {
          _controllerCompleter.future.then((value) => _controller = value);
          _controllerCompleter.complete(webViewController);
        },
      ),
    );
  }
}
