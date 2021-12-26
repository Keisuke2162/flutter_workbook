import 'package:flutter/material.dart';

class Lesson6 extends StatelessWidget {

  List<String> imageUrls = [
    'https://molasoft-article.com/flutter-drill/images/mola-red.png',
    'https://molasoft-article.com/flutter-drill/images/mola-blue.png',
    'https://molasoft-article.com/flutter-drill/images/mola-yellow.png',
    'https://molasoft-article.com/flutter-drill/images/mola-green.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          childAspectRatio: 1.2,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Image(
            image: NetworkImage(imageUrls[index]),
          );
        }
      ),
    );
  }
}