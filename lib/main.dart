import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workbook/Lesson1.dart';
import 'package:flutter_workbook/Lesson10.dart';
import 'package:flutter_workbook/Lesson11.dart';
import 'package:flutter_workbook/Lesson2.dart';
import 'package:flutter_workbook/Lesson3.dart';
import 'package:flutter_workbook/Lesson4.dart';
import 'package:flutter_workbook/Lesson5.dart';
import 'package:flutter_workbook/Lesson6.dart';
import 'package:flutter_workbook/Lesson7.dart';
import 'package:flutter_workbook/Lesson8.dart';
import 'package:flutter_workbook/Lesson9.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Lesson11(),
    );
  }
}