import 'package:firebase_database/firebase_database.dart';

class FBNews{
  String? key;
  String NewsTitle;

  FBNews(this.NewsTitle);

  FBNews.fromSnapshot(DataSnapshot snapshot)
    : key = snapshot.key,
      NewsTitle = snapshot.value['NewTitle'];

  toJson() {
    return{
      'NewsTitle': NewsTitle,
    };
  }

}