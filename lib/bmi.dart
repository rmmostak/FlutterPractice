import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({ Key? key }) : super(key: key);

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {

int start=120;
int weight=50;
int age=20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text("BMI Calculator"),
          backgroundColor: Colors.deepOrange,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff1f2427),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(height: 50,
                            width: 50,
                            child: Image(image: AssetImage("images/male.png")),),
                            SizedBox(height: 12,),
                            Text("Male", style: TextStyle(color: Colors.grey, fontSize: 18),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff1f2427),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(height: 50,
                            width: 50,
                            child: Image(image: AssetImage("images/female.png")),),
                            SizedBox(height: 12,),
                            Text("Female", style: TextStyle(color: Colors.grey, fontSize: 18),)
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
                      child: Container(
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff1f2427),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Height", style: TextStyle(fontSize: 18, color: Colors.grey),),
                            Container(
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.bottomCenter,
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("$start", style: TextStyle(color: Colors.white, fontSize: 30),),
                                Text("cm", style: TextStyle(color: Colors.grey,),)
                                
                              ],
                            ),
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
                      child: Container(
                        height: 180,
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff1f2427),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Weight", style: TextStyle(color: Colors.white, fontSize: 18),),
                            Text("$weight", style: TextStyle(color: Colors.white, fontSize: 30),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  fillColor: Colors.deepPurple,
                                  constraints: BoxConstraints.tightFor(
                                    height: 40,
                                    width: 40,
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    child: Image(image: AssetImage("images/plus.png")),
                                  )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  fillColor: Colors.deepPurple,
                                  constraints: BoxConstraints.tightFor(
                                    height: 40,
                                    width: 40,
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    child: Image(image: AssetImage("images/minus.png")),
                                  ))
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 180,
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff1f2427),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Age", style: TextStyle(color: Colors.white, fontSize: 18),),
                            Text("$age", style: TextStyle(color: Colors.white, fontSize: 30),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  fillColor: Colors.deepPurple,
                                  constraints: BoxConstraints.tightFor(
                                    height: 40,
                                    width: 40,
                                  ),child: Container(
                                    margin: EdgeInsets.all(5),
                                    child: Image(image: AssetImage("images/plus.png")),
                                  )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  fillColor: Colors.deepPurple,
                                  constraints: BoxConstraints.tightFor(
                                    height: 40,
                                    width: 40,
                                  ),child: Container(
                                    margin: EdgeInsets.all(5),
                                    child: Image(image: AssetImage("images/minus.png")),
                                  )),
                              ],
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.deepOrange,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 15),
                  child: Text("Calculate Result",
                  style: TextStyle(fontSize: 25, color: Colors.white),),
                
              )
            ],
          ),
        )
        ),
    );
  }
}