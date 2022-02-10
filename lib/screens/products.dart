import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Products extends StatefulWidget {
  final showAppBar;
  const Products({Key? key, this.showAppBar}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  WebViewController? _controller;
  final Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: 'http://logger-india.herokuapp.com/products',
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
