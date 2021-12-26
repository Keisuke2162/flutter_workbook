import 'package:flutter/material.dart';
import 'package:flutter_workbook/Lesson19_Data.dart';
import 'package:flutter_workbook/Lesson19_ServiceDetailPage.dart';

// Lesson19 サービス一覧ページ

class ServiceListPage extends StatelessWidget {
  
  @override

  List<ServiceModel> serviceList;
  ServiceListPage(this.serviceList);
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ServiceList"),
      ),
      body: ListView.builder(
        itemCount: serviceList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Column(
              children: [
                SizedBox(height: 16),
                
                Row(
                  children: [
                    SizedBox(width: 8),
                    
                    // 写真
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        width: 115,
                        height: 75,
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(serviceList[index].imagePath),
                        ),
                      ),
                    ),

                    SizedBox(width: 16),

                    Text(
                      serviceList[index].title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),

                    ),
                    
                  ],
                ),
                
                SizedBox(height: 16),
              ],
            ),

            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ServiceDetailPage(serviceList[index]),
                  )
              );
            },
          );
        }
      ),
    );
  }
}