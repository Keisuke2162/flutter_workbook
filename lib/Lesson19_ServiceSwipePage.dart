import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_workbook/Lesson19_Data.dart';
import 'package:flutter_workbook/Lesson19_ServiceDetailPage.dart';
import 'package:flutter_workbook/Lesson19_ServiceListPage.dart';

// Lesson19 横スクロールサービス紹介ページ

class ServiceSwipePage extends StatelessWidget {

  // データの件数を返却（MAX5件）
  int getServiceDataCount(List<ServiceModel> dataList) {
    final count = dataList.length;

    if (count > 5) {
      return 5;
    } else {
      return count;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson19"),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 16),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("サービス内容"),

                    // 5件以上データがある場合はもっとみるボタンを表示
                    (serviceDataList.length > 5) ?
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            "もっとみる",
                            textAlign: TextAlign.end,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ServiceListPage(serviceDataList),
                              )
                          );
                        },
                      )
                        :SizedBox(width: 8)
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: 16),

          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: getServiceDataCount(serviceDataList),
              itemBuilder: (context, index) {

                return GestureDetector(
                  child: Container(
                    width: 166,
                    child: Column(
                      children: [

                        // 写真
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: SizedBox(
                            width: 150,
                            height: 100,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(serviceDataList[index].imagePath),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 150,
                          child: Text(
                            serviceDataList[index].title,
                            style: TextStyle(
                              fontSize: 14
                            ),
                          ),
                        ),

                        SizedBox(height: 4),

                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Text(
                            serviceDataList[index].content,
                            style: TextStyle(
                              fontSize: 11
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => ServiceDetailPage(serviceDataList[index]),
                      )
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}