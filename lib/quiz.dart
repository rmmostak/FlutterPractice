import 'dart:math';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String msg = "", check = "";
  int ran = 0;

  // ignore: non_constant_identifier_names
  void Match(int n) {
    ran = Random().nextInt(9) + 1;
    if (n == ran) {
      //print("You Win!");
      msg = "You Win!";
      check = "You press $n & machine select $ran";
    } else {
      //print("You Lose!");
      msg = "You Lose!";
      check = "You press $n & machine select $ran";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Practice",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz App"),
              backgroundColor: Colors.blue,
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "$msg",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          )),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue,
                              margin: EdgeInsets.all(5),
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    //print("clicked!");
                                    Match(1);
                                  });
                                },
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              color: Colors.blue,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    Match(2);
                                    //print("clicked!");
                                  });
                                },
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue,
                              margin: EdgeInsets.all(5),
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    Match(3);
                                    //print("clicked!");
                                  });
                                },
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue,
                              margin: EdgeInsets.all(5),
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    Match(4);
                                    //print("clicked!");
                                  });
                                },
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue,
                              margin: EdgeInsets.all(5),
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    Match(5);
                                    //print("clicked!");
                                  });
                                },
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              color: Colors.blue,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    Match(6);
                                    //print("clicked!");
                                  });
                                },
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue,
                              margin: EdgeInsets.all(5),
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    //print("clicked!");
                                    Match(7);
                                  });
                                },
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              color: Colors.blue,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    Match(8);
                                    //print("clicked!");
                                  });
                                },
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.blue,
                              margin: EdgeInsets.all(5),
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    Match(9);
                                    //print("clicked!");
                                  });
                                },
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "$check",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )),
                    ]),
                  ]),
            )));
  }
}
