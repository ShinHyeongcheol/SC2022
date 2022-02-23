import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quiz/NewsReport.dart';
import 'package:quiz/NewsTest.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.writer,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final DateTime time;
  final String writer;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Color(0xff41B06B),
            width: 3,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 15, 8, 10),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewsReport(
                            title: title,
                            subtitle: subtitle,
                            time: time,
                            writer: writer)),
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/tree.png'),
                            fit: BoxFit.fitWidth,
                          )),
                    ),
                    Positioned(
                      top: 130,
                      child: Container(
                        height: 100,
                        width: 1000,
                        color: Colors.black45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 8, 8, 3),
                              child: Expanded(
                                child: Text(
                                  title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 1, 8, 4),
                              child: Expanded(
                                child: Text(
                                  subtitle,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 10, 8, 3),
                              child: Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text(
                                        DateFormat("yyyy-MM-dd").format(time),
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      writer,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                width: 1000,
                child: Divider(
                  color: Color(0xff41B06B),
                  thickness: 2.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Tag 1'),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Color(0xff81dfa4),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Tag 2'),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Color(0xff81dfa4),
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
