import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomeWebPageScreen extends StatefulWidget {
  final String url;
  const CustomeWebPageScreen({super.key, required this.url});

  @override
  State<CustomeWebPageScreen> createState() => _CustomeWebPageScreenState();
}

class _CustomeWebPageScreenState extends State<CustomeWebPageScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Peace Of Mind With StoneCircle')),
      body: WebViewWidget(controller: _controller),
    );
  }
}
