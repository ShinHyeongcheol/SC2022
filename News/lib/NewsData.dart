import 'News.dart';

class NewsData{
  List<News> NewsDB = [
    News(1,'1 Title','1 Sub', DateTime(2000,07,17,1,0,0,0,0), '1 Writer'),
    News(2,'2 Title','2 Sub', DateTime(2000,07,17,2,0,0,0,0), '2 Writer'),
    News(3,'3 Title','3 Sub', DateTime(2000,07,17,1,0,0,0,0), '3 Writer'),
    News(4,'4 Title','4 Sub', DateTime(2000,07,17,2,0,0,0,0), '4 Writer'),
    News(5,'5 Title','5 Sub', DateTime(2000,07,17,1,0,0,0,0), '5 Writer'),
    News(6,'6 Title','6 Sub', DateTime(2000,07,17,2,0,0,0,0), '6 Writer'),
  ];

  int getNum(){
    return NewsDB.length;
  }

  String getTitle(int index){
    return NewsDB[index].NewsTitle;
  }

  String getSubtitle(int index){
    return NewsDB[index].NewsSubtitle;
  }

  String getWriter(int index){
    return NewsDB[index].NewsWriter;
  }

  DateTime getTime(int index){
    return NewsDB[index].NewsTime;
  }


}