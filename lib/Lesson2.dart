import 'package:flutter/material.dart';

// ２：LIST_VIEW_BUILDER(難易度C)

class Lesson2 extends StatelessWidget {

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
        title: Text("Lesson2"),
      ),
      body: ListView.builder(
        itemCount: testData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(testData[index]),
                    ),

                    Expanded(
                      flex: 1,
                      child: Text("詳細へ"),
                    )
                  ],
                ),
              ),

              // 区切り線
              Divider(),
            ],
          );
        }
      )
    );
  }
}