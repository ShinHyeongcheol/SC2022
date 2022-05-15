import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FBNews{

  late int Num;
  late String Question;
  late String Answer;
  late int Point;
  late int Type;
  DocumentReference? reference;

  FBNews({
    required this.num,
    required this.question,
    required this.answer,
    required this.point,
    required this.type,
    this.reference,
  });

  FBNews.fromJson(dynamic json) {
    num = json['Num'];
    question = json['Question'];
    answer = json['Answer'];
    point = json['Point'];
    type = json['Type'];
  }
  int num;
  String question;
  String answer;
  int point;
  int type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Num'] = num;
    map['Question'] = question;
    map['Answer'] = answer;
    map['Point'] = point;
    map['Type'] = type;
    return map;
  }


}