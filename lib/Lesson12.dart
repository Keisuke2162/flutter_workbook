import 'package:flutter/material.dart';

// １２：WIDGETを角丸や丸にする(難易度C)

class Lesson12 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson12"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // 角丸1
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blueAccent,
                ),
                child: Center(
                  child: Text("角丸"),
                ),
              ),

              SizedBox(width: 12),

              // 角丸2
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text("角丸"),
                  ),
                ),
              ),

              SizedBox(width: 12),

              // 円形
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent,
                ),
                child: Center(
                  child: Text("丸"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}