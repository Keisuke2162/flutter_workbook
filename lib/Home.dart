import 'package:flutter/material.dart';
import 'package:flutter_workbook/flutter_drill_data.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.builder(
        itemCount: lessonDataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    lessonDataList[index].title,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Divider(),
              ],
            ),
            // title: Text(lessonDataList[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => lessonDataList[index].trainingPage),
              );
            },
          );
        }
      ),
    );
  }
}

/*
return Expanded(
            child: GestureDetector(
              child:  Column(
                children: [
                  SizedBox(height: 16),

                  Row(
                    children: [
                      SizedBox(width: 16),

                      Text(lessonDataList[index].title),
                    ],
                  ),

                  SizedBox(height: 16),

                  Divider(),
                ],
              ),

              onTap: () {

              },
            ),
          );
 */