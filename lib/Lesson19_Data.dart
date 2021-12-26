import 'package:flutter/material.dart';

// Lesson19 データ

class ServiceModel {
  String title;
  String content;
  String imagePath;

  ServiceModel(this.title, this.content, this.imagePath);
}

List<ServiceModel> serviceDataList = [
  ServiceModel("アプリ開発", "アプリ開発事業を行っております、お気軽にご相談ください", 'images/demo1.jpg'),
  ServiceModel("動画撮影", "動画撮影事業を行っております、お気軽にご相談ください", 'images/demo2.jpg'),
  ServiceModel("記事執筆", "記事執筆を行っております、お気軽にご相談ください", 'images/demo3.jpg'),
  ServiceModel("ゲーム開発", "ゲーム開発事業を行っております、お気軽にご相談ください", 'images/demo4.jpg'),
  ServiceModel("学習塾", "学習塾事業を行っております、お気軽にご相談ください", 'images/demo1.jpg'),
  ServiceModel("代行サービス", "代行サービスを行っております、お気軽にご相談ください", 'images/demo1.jpg'),
];