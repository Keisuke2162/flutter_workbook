import 'package:flutter/material.dart';
import 'package:flutter_workbook/Lesson5.dart';
import 'package:flutter_workbook/Lesson7.dart';

class Lesson8 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson8"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),

            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text("タイトル"),
                      content: Text("詳細内容"),
                      actions: <Widget> [

                        // キャンセルボタン
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          )
                        ),

                        // OKボタン
                        TextButton(
                            onPressed: () =>Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Lesson5()
                              )
                            ),
                            child: Text(
                              "OK",
                              style: TextStyle(
                                  color: Colors.grey
                              ),
                            )
                        ),
                      ],
                    );
                  }
                );
              },
              child: Text("ダイアログを表示")
            ),
          ],
        ),
      ),
    );
  }
}