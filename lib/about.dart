import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Practice",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("About App"),
          backgroundColor: Colors.blueAccent,
        ),
        body: SafeArea(
          //child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.all(10),
                      child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Text(
                            "LOGO",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "About Mobile Application",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      "v-1.1.0",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Design & Developed by",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      "Computer Science and Engineering Department\nJashore University of Science and Technology",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.deepPurple,
                        //fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          //),
        ),
      ),
    );
  }
}
