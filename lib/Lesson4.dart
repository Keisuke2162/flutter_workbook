import 'package:flutter/material.dart';

// ４：GLID_VIEW_BUILDER(難易度C)

class Lesson4 extends StatelessWidget {

  List<String> testData = [
    "A型",
    "B型",
    "AB型",
    "O型"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson4"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemCount: testData.length,
        itemBuilder: (context, index) {
          return ColoredBox(
            color: Colors.blueAccent,
            child: Center(
              child: Text(testData[index]),
            ),
          );
        }
      ),
    );
  }
}