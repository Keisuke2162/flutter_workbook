import 'package:flutter/material.dart';

// １１：サイズの指定を極める(難易度C)

class Lesson11 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson11"),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 200,
            maxWidth: 320,
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
              child: Text("一定の横幅"),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}