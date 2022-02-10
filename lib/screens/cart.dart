import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Cart extends StatefulWidget {
  final showAppBar;
  const Cart({Key? key, this.showAppBar}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  WebViewController? _controller;
  final Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: 'http://logger-india.herokuapp.com/cart',
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
