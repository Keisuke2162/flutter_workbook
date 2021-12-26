import 'package:flutter/material.dart';

// ５：プロジェクト内の画像の表示(難易度C)

class Lesson5 extends StatelessWidget {

  List<String> testImages = [
    'images/demo1.jpg',
    'images/demo2.jpg',
    'images/demo3.jpg',
    'images/demo4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          childAspectRatio: 1.5
        ),
        itemCount: testImages.length,
        itemBuilder: (context, index) {

          return Image(
            image: AssetImage(testImages[index]),
          );
        }
      ),
    );
  }
}