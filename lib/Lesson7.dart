import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Lesson7 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),

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