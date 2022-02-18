import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Bar',
      theme: ThemeData(primaryColor: Colors.white),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              Text('One'),
              Text('Two'),
              Text('Three'),
              Text('Four'),
            ],
          ),
          bottomNavigationBar: Container(
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Color(0xffEFEFEF),
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              tabs: [
                Tab(
                  icon: Icon(Icons.adb),
                  text: 'one',
                ),
                Tab(
                  icon: Icon(Icons.adb),
                  text: 'two',
                ),
                Tab(
                  icon: Icon(Icons.adb),
                  text: 'three',
                ),
                Tab(
                  icon: Icon(Icons.adb),
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
