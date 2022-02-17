import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quiz/NewsData.dart';
import 'package:quiz/NewsTest.dart';
import 'NewsContainer.dart';

void main() {
  runApp(const MyApp());
}

NewsData newsData =NewsData();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsMain(),
    );
  }
}

class NewsMain extends StatelessWidget {
  const NewsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
          style: TextStyle(
              color: Color(0xff615E5C),
              fontWeight: FontWeight.bold,
              fontSize: 30
          ),
        ),
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          color: Colors.lightBlue,
          iconSize: 40,
          onPressed: (){},
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(65.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Color(0xff81dfa4),
                      width: 3,
                    ),
                  ),
                  child: TextFormField(
                    onChanged: (value) => (value),
                    decoration: const InputDecoration(
                      hintText: "Search",
                      contentPadding: EdgeInsets.only(left: 12.0,right: 12.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff41B06B),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search, color: Colors.white),
                    iconSize: 35,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body:ListView.builder(
        itemCount: newsData.getNum(),
        itemBuilder: (BuildContext context, int index) => NewsContainer(
          title: newsData.getTitle(index),
          subtitle: newsData.getSubtitle(index),
          time: newsData.getTime(index),
          writer: newsData.getWriter(index),
        ),
      ),
    );
  }
}

