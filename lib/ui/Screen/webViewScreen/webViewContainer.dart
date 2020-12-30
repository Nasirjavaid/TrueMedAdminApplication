import 'dart:io';
import 'package:flutter/material.dart';
import 'package:truemed_adminapp/ui/CommonWidget/commonWidgets.dart';
import 'package:webview_cookie_manager/webview_cookie_manager.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  // final url;
  // final title;

  // WebViewContainer(this.url, this.title);
  @override
  createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  var _title;
  bool isLoading = true;

  final cookieManager = WebviewCookieManager();

  final String _url1 = 'https://qahonu.dxresults.com/admin/home';
  final String cookieValue = 'some-cookie-value';
  final String domain = 'qahonu.dxresults.com';
  final String cookieName = 'some_cookie_name';

  List<Cookie> cookieList = [
    Cookie("IsReferenceLab", "0")
      ..domain = "https://qahonu.dxresults.com/admin/home"
      ..expires = DateTime.now().add(Duration(days: 10))
      ..httpOnly = false,
    Cookie("ToLabTransferId", "0")
      ..domain = "https://qahonu.dxresults.com/admin/home"
      ..expires = DateTime.now().add(Duration(days: 10))
      ..httpOnly = false,
    Cookie("ToLabTransfer", "")
      ..domain = "https://qahonu.dxresults.com/admin/home"
      ..expires = DateTime.now().add(Duration(days: 10))
      ..httpOnly = false,
    Cookie("AdminType", "SuperAdmin")
      ..domain = "https://qahonu.dxresults.com/admin/home"
      ..expires = DateTime.now().add(Duration(days: 10))
      ..httpOnly = false,
    Cookie("SuperAdminId", "244")
      ..domain = "https://qahonu.dxresults.com/admin/home"
      ..expires = DateTime.now().add(Duration(days: 10))
      ..httpOnly = false,
  ];

  @override
  void initState() {
    super.initState();
    cookieManager.clearCookies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Book",
          style: Theme.of(context).textTheme.button,
        ),
      ),

      // body: WebView(
      //     initialUrl: _url1,
      //     javascriptMode: JavascriptMode.unrestricted,
      //     onWebViewCreated: (controller) async {
      //       await cookieManager.setCookies([
      //         Cookie(cookieName, cookieValue)
      //           ..domain = domain
      //           ..expires = DateTime.now().add(Duration(days: 10))
      //           ..httpOnly = false
      //       ]);
      //     },
      //     onPageFinished: (_) async {
      //       final gotCookies = await cookieManager.getCookies(_url);
      //       for (var item in gotCookies) {
      //         print("Cookies $item");
      //       }
      //     },
      //   ),

      body: Stack(
        children: <Widget>[
          WebView(
            initialUrl: _url1,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) async {
              await cookieManager.setCookies(cookieList);
            },
            onPageFinished: (_) async {
              final gotCookies = await cookieManager.getCookies(_url);
              for (var item in gotCookies) {
                print("Cookies $item");
              }
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading
              ? Center(
                  child: CommonWidgets.progressIndicator,
                )
              : Stack(),
        ],
      ),
    );
  }
}
