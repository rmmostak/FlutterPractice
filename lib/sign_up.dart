import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static const maxLength = 10;
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Practice",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.all(20),
                      child: CircleAvatar(
                        child: Text(
                          "Logo",
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create your account by following steps",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter your email",
                        labelText: "Email",
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "Enter your password",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("Login"),
                    textColor: Colors.white,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
