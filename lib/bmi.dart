import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({ Key? key }) : super(key: key);

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {

int start=140;
int weight=50;
int age=20;
Color bgColor=Color(0xff1f2427);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text("BMI Calculator"),
          backgroundColor: Color(0xff1f2427),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            print("Male");
                            bgColor=Color(0xffe91963);
                          });
                        },
                        child: Reusable(
                          color: bgColor,
                          widgetChild:ChildContent(
                            icon: Icons.male,
                            text: "Male",
                          )
                        ),
                      )
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            print("Female");
                            bgColor=Color(0xffe91963);
                          });
                        },
                        child: Reusable(
                          color: bgColor,
                          widgetChild: ChildContent(
                            icon: Icons.female,
                            text: "Female",
                          ),
                        ),
                      )
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Reusable(
                        color: Color(0xff1f2427),
                        widgetChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Height", style: TextStyle(fontSize: 25, color: Colors.white),),
                            Reusable(
                              color: Color(0xff1f2427),
                              widgetChild: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("$start", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                                  Text("cm", style: TextStyle(color: Colors.white),)
                                ],
                              )
                            ),
                            Slider(
                              value: start.toDouble(),
                              min: 120,
                              max:  230,
                              onChanged: (double changeVal) {
                                setState(() {
                                  start=changeVal.round();
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Reusable(
                        color: Color(0xff1f2427),
                        widgetChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Weight", style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 5,),
                            Text("$weight", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                           Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: RawMaterialButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(Icons.add_circle, size: 30, color: Colors.white,),
                                )),
                                Expanded(child: RawMaterialButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(Icons.remove_circle, color: Colors.white, size: 30,)
                                  )
                                )
                              ],
                            )
                          ] 
                        )
                      )
                    ),
                    Expanded(
                      child: Reusable(
                        color: Color(0xff1f2427),
                        widgetChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Age", style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 5,),
                            Text("$age", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                           Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: RawMaterialButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add_circle, size: 30, color: Colors.white,),
                                )),
                                Expanded(child: RawMaterialButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove_circle, color: Colors.white, size: 30,)
                                  ))
                              ],
                            )
                          ] 
                        )
                        )
                    )
                  ],
                ),
              ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      print("Calculate Pressed!!");
                    });
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.red,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
                    child: Text("Calculate Result",
                    style: TextStyle(fontSize: 25, color: Colors.white),),
                  ),
                )
            ],
          ),
        )
      ),
    );
  }
}

// ignore: must_be_immutable
class Reusable extends StatelessWidget {
  
  Reusable({required this.color, this.widgetChild}) {}

  Color color;
  Widget?widgetChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15)
      ),
      child: widgetChild,
    );
  }
}

// ignore: must_be_immutable
class ChildContent extends StatelessWidget {
  
  ChildContent({required this.icon, required this.text}) {}
  
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon, 
            size: 60,
            color: Colors.white
            ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25
            ),
          )
        ],
    );
  }
}