import 'package:flutter/material.dart';

// １０：PAGE_VIEWで画面表示(難易度C)

class Lesson10 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final PageController controller = PageController(initialPage: 0);

    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson10"),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: <Widget>[
          // Page1
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text("1"),
              ),
            ),
          ),

          // Page2
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellowAccent,
              child: Center(
                child: Text("2"),
              ),
            ),
          ),

          // Page3
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.redAccent,
              child: Center(
                child: Text("3"),
              ),
            ),
          )
        ],
      ),
    );
  }
}