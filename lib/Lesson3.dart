import 'package:flutter/material.dart';

// ３：自作WIDGETの切り出し(難易度C)

class Lesson3 extends StatelessWidget {

  List<String> testData = [
    "今日のニュース",
    "昨日のニュース",
    "先週のニュース",
    "1ヶ月前のニュース",
    "1年前のニュース",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lesson3"),
        ),
        body: ListView.builder(
          itemCount: testData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                newsWidget(testData[index]),

                // 区切り線
                Divider(),
              ],
            );
          }
      )
    );
  }
}

/// セルに表示する内容
Widget newsWidget(String title) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Text(title),
            ),

            Expanded(
              flex: 1,
              child: Text("詳細へ"),
            )
          ],
        ),
      ),
    ],
  );
}