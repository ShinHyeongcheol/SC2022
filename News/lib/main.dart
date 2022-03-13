import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'FBNews.dart';
import 'package:flutter/material.dart';
import 'package:quiz/FBNews.dart';
import 'package:quiz/NewsData.dart';
import 'package:quiz/NewsReport.dart';
import 'package:quiz/NewsTest.dart';
import 'NewsContainer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(test());
}

NewsData newsData = NewsData();

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsMain(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Bar',
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              Text('One'),
              Text('Two'),
              NewsMain(),
              Text('Map'),
            ],
          ),
          bottomNavigationBar: Container(
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  icon: ImageIcon(
                    AssetImage('assets/images/page1icon.png'),
                  ),
                  text: 'one',
                ),
                Tab(
                  icon: ImageIcon(
                    AssetImage('assets/images/page2icon.png'),
                  ),
                  text: 'two',
                ),
                Tab(
                  icon: ImageIcon(
                    AssetImage('assets/images/page3icon.png'),
                  ),
                  text: 'News',
                ),
                Tab(
                  icon: ImageIcon(
                    AssetImage('assets/images/page4icon.png'),
                  ),
                  text: 'four',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewsMain extends StatefulWidget {
  const NewsMain({Key? key}) : super(key: key);

  @override
  State<NewsMain> createState() => _NewsMainState();
}

class _NewsMainState extends State<NewsMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
          style: TextStyle(
              color: Color(0xff615E5C),
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          color: Colors.lightBlue,
          iconSize: 40,
          onPressed: () {},
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
                      contentPadding: EdgeInsets.only(left: 12.0, right: 12.0),
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
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('News').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          return Container(
            child: ListView.builder(
              itemCount: snapshot.data?.docs.length,
              //itemCount: newsData.getNum(),
              itemBuilder: (BuildContext context, int index) => NewsContainer(
                index: index,
                title: snapshot.data!.docs[index]['Title'],
                writer: snapshot.data!.docs[index]['Writer'],
                tag1: snapshot.data!.docs[index]['Tag1'],
                tag2: snapshot.data!.docs[index]['Tag2'],
              ),
            ),
          );
        },
      ),
    );
  }
}
