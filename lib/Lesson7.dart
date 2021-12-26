import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ７：URL_LAUNCHERでブラウザ起動 (難易度C)

class Lesson7 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson7"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                launch(
                  "https://flutter.dev",
                  forceSafariVC: true,
                  forceWebView: true,
                );
              },
              child: Text("アプリ内ブラウザ")
            ),

            ElevatedButton(
              onPressed: () {
                launch(
                  "https://flutter.dev",
                  forceSafariVC: false,
                  forceWebView: false,
                );
              },
              child: Text("アプリ外ブラウザ")
            ),
          ],
        ),
      ),
    );
  }
}