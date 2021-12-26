import 'package:flutter/material.dart';
import 'package:flutter_workbook/Lesson5.dart';
import 'package:introduction_screen/introduction_screen.dart';

// １５：オンボードも簡単に(難易度C)

class Lesson15 extends StatelessWidget {

  // データ
  final listPagesViewModel = [


    // First
    PageViewModel(
      title: 'First',
      bodyWidget: Text(
        "アプリの説明です。",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      image: Center(
        child: Image.network(
          "https://molasoft-article.com/flutter-drill/images/mola-red.png",
          height: 175,
        ),
      )
    ),

    // Second
    PageViewModel(
      title: 'Second',
      bodyWidget: Text(
        "アプリの説明の続きです。",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      image: Center(
        child: Image.network(
          "https://molasoft-article.com/flutter-drill/images/mola-yellow.png",
          height: 175,
        ),
      )
    ),

    // Third
    PageViewModel(
      title: 'Third',
      bodyWidget: Text(
        "最後のアプリの説明です。",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      image: Center(
        child: Image.network(
          "https://molasoft-article.com/flutter-drill/images/mola-blue.png",
          height: 175,
        ),
      )
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson15"),
      ),
      body: IntroductionScreen(
        pages: listPagesViewModel,
        onDone: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => Lesson5(),
            ),
            (_) => false
          );
        },
        onSkip: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => Lesson5(),
            ),
            (_) => false
          );
        },

        showSkipButton: true,
        skip: Text("Skip"),
        next: Icon(Icons.navigate_next),
        done: Text(
          "完了",
          style: TextStyle (
            fontWeight: FontWeight.w600
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          activeColor: Colors.blueAccent,
          color: Colors.black26,
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          )
        ),
      ),
    );
  }
}