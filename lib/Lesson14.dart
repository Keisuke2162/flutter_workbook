import 'package:flutter/material.dart';

// １４：アプリアイコンを簡単に実装する(難易度C)

class Lesson14 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson14"),
      ),
      body: Center(
        child: Text("Lesson14 はアプリアイコン変更課題！"),
      ),
    );
  }
}
