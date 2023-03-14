import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:staylit/ui/_screens/drawer_screen.dart';
import 'package:staylit/ui/_screens/success_screen.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        drawer: DrawwerScreen(),
        backgroundColor: Color.fromARGB(255, 15, 31, 45),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 15, 31, 45),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(
                20,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text(
                      "3 New Job Request",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 30),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 338,
                          height: 312,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/requestcard.png"),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(30),
                                  width: 74,
                                  height: 75,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/people.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Albin Alex",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 45),
                              child: Row(
                                children: [
                                  Text("Service Requests :"),
                                  Text(
                                    "   Cleaning",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 334,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  alignment: Alignment(1, 3),
                                  image: AssetImage(
                                    "images/line.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20, top: 200),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text("Room Number:"),
                                      Text("  10"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 45, top: 230),
                          child: Row(
                            children: [Text("Floor Number:"), Text(" 2")],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 270),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RequestButtton(
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SuccessScreen()));
                                      },
                                      text: "Accept"),
                                  RequestButtton(
                                      onPressed: () {}, text: "Decline"),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 338,
                          height: 312,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/requestcard.png"),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(30),
                                  width: 74,
                                  height: 75,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/people.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Albin Alex",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 45),
                              child: Row(
                                children: [
                                  Text("Service Requests :"),
                                  Text(
                                    "   Cleaning",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 334,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  alignment: Alignment(1, 3),
                                  image: AssetImage(
                                    "images/line.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20, top: 200),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text("Room Number:"),
                                      Text("  10"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 45, top: 230),
                          child: Row(
                            children: [Text("Floor Number:"), Text(" 2")],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 270),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RequestButtton(
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SuccessScreen()));
                                      },
                                      text: "Accept"),
                                  RequestButtton(
                                      onPressed: () {}, text: "Decline"),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 338,
                          height: 312,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/requestcard.png"),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(30),
                                  width: 74,
                                  height: 75,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/people.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Albin Alex",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 45),
                              child: Row(
                                children: [
                                  Text("Service Requests :"),
                                  Text(
                                    "   Cleaning",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 334,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  alignment: Alignment(1, 3),
                                  image: AssetImage(
                                    "images/line.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20, top: 200),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text("Room Number:"),
                                      Text("  10"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 45, top: 230),
                          child: Row(
                            children: [Text("Floor Number:"), Text(" 2")],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, top: 270),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RequestButtton(
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SuccessScreen()));
                                      },
                                      text: "Accept"),
                                  RequestButtton(
                                      onPressed: () {}, text: "Decline"),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RequestButtton extends StatelessWidget {
  final Function() onPressed;
  final String text;

  const RequestButtton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(2, 0, 10, 10),
            width: 157,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/requestbtn.png",
                ),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 5),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
