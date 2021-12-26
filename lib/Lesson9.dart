import 'package:flutter/material.dart';
import 'package:flutter_workbook/Lesson5.dart';

// ９：画面遷移を制御する(難易度C)

class Lesson9 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson9"),
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
                          onPressed: () =>Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Lesson5(),
                            ),
                              (_) => false,
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