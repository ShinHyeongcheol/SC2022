class News {
  int NewsNum = 0;
  String NewsTitle = '';
  String NewsSubtitle = '';
  DateTime NewsTime = DateTime(2000,07,17,0,0,0,0,0);
  String NewsWriter = '';

  News(int num, String title, String sub, DateTime time, String writer){
    NewsNum = num;
    NewsTitle = title;
    NewsSubtitle = sub;
    NewsTime = time;
    NewsWriter = writer;
  }
}