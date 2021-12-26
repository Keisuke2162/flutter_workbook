
import 'package:flutter/cupertino.dart';
import 'package:flutter_workbook/Lesson1.dart';
import 'package:flutter_workbook/Lesson10.dart';
import 'package:flutter_workbook/Lesson11.dart';
import 'package:flutter_workbook/Lesson12.dart';
import 'package:flutter_workbook/Lesson13.dart';
import 'package:flutter_workbook/Lesson14.dart';
import 'package:flutter_workbook/Lesson15.dart';
import 'package:flutter_workbook/Lesson16A.dart';
import 'package:flutter_workbook/Lesson2.dart';
import 'package:flutter_workbook/Lesson3.dart';
import 'package:flutter_workbook/Lesson4.dart';
import 'package:flutter_workbook/Lesson5.dart';
import 'package:flutter_workbook/Lesson6.dart';
import 'package:flutter_workbook/Lesson7.dart';
import 'package:flutter_workbook/Lesson8.dart';
import 'package:flutter_workbook/Lesson9.dart';

class LessonModel {
  String title;
  Widget trainingPage;

  LessonModel(this.title, this.trainingPage);
}

List<LessonModel> lessonDataList = [
  LessonModel("１：ROWとCOLUMN(難易度D)", Lesson1()),
  LessonModel("２：LIST_VIEW_BUILDER(難易度C)", Lesson2()),
  LessonModel("３：自作WIDGETの切り出し(難易度C)", Lesson3()),
  LessonModel("４：GLID_VIEW_BUILDER(難易度C)", Lesson4()),
  LessonModel("５：プロジェクト内の画像の表示(難易度C)", Lesson5()),
  LessonModel("６：WEB上の画像の表示(難易度C)", Lesson6()),
  LessonModel("７：URL_LAUNCHERでブラウザ起動 (難易度C)", Lesson7()),
  LessonModel("８：ダイアログを出そう(難易度C)", Lesson8()),
  LessonModel("９：画面遷移を制御する(難易度C)", Lesson9()),
  LessonModel("１０：PAGE_VIEWで画面表示(難易度C)", Lesson10()),
  LessonModel("１１：サイズの指定を極める(難易度C)", Lesson11()),
  LessonModel("１２：WIDGETを角丸や丸にする(難易度C)", Lesson12()),
  LessonModel("１３：STAC Kで画像にWIDGETを重ねる(難易度B)", Lesson13()),
  LessonModel("１４：アプリアイコンを簡単に実装する(難易度C)", Lesson14()),
  LessonModel("１５：オンボードも簡単に(難易度C)", Lesson15()),
  LessonModel("１６：デバイスからの画像選択とカメラ起動(難易度B)", Lesson16A()),

];
