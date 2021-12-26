import 'package:flutter/material.dart';

// １３：STAC Kで画像にWIDGETを重ねる(難易度B)

class Lesson13 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson13"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [

                // 1
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: SizedBox(
                    width: 120,
                    height: 100,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('images/demo1.jpg'),
                    ),
                  ),
                ),

                Positioned(
                  top: 2,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.orange
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "NEW",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(width: 12),

            // 2
            Stack(
              children: [
                Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/demo2.jpg'),
                    ),
                  ),
                ),

                Positioned(
                  top: 14,
                  right: 14,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}