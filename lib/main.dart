import 'package:flutter/material.dart';
import 'middle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _textHeightControl = TextEditingController();
  final _textWeightControl = TextEditingController();

  var result;

  void calculateBMI() {
    var weight = double.parse(_textWeightControl.text);
    var height = double.parse(_textHeightControl.text);

    setState(() {
      result = weight / (height * height);  
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: null,
              color: Colors.white,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical:25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: MidRadio(),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Height in Cm:",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 25),
                      TextField(
                        controller: _textHeightControl,
                        decoration: InputDecoration(
                          hintText: "Your Height in Cm",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade400,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Your Weight in Cm:",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        controller: _textWeightControl,
                        decoration: InputDecoration(
                          hintText: "Your Height in Cm",
                          hintStyle: TextStyle(color: Colors.black),
                          filled: true,
                          fillColor: Colors.grey.shade400,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: calculateBMI,
                            child: Text(
                              "Calculate",
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                EdgeInsets.all(25),
                              ),
                              elevation: MaterialStateProperty.all(5),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink.shade400),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      Center(
                        child: Text(
                          "Your BMI IS:",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Center(
                        child: Text(
                          result.toString(),
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
