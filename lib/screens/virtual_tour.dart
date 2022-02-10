import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VirtualTour extends StatefulWidget {
  const VirtualTour({Key? key}) : super(key: key);

  @override
  _VirtualTourState createState() => _VirtualTourState();
}

class _VirtualTourState extends State<VirtualTour> {
  WebViewController? _controller;
  final Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: "https://studiodecor.co.in/virtualtour/",
          javascriptMode: JavascriptMode.unrestricted,
          key: UniqueKey(),
          onWebViewCreated: (WebViewController webViewController) {
            _controllerCompleter.future.then((value) => _controller = value);
            _controllerCompleter.complete(webViewController);
          },
        ),
      ),
    );
  }
}
