import 'package:flutter/material.dart';
import 'package:flutter_workbook/Lesson19_Data.dart';

// Lesson19 サービス詳細ページ

class ServiceDetailPage extends StatelessWidget {

  @override

  ServiceModel serviceData;
  ServiceDetailPage(this.serviceData);

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("ServiceDetail"),
      ),
      body: Column(
        children: [
          Image(image: AssetImage(serviceData.imagePath)),
          Text(serviceData.title),
          Text(serviceData.content),
        ],
      ),
    );
  }
}