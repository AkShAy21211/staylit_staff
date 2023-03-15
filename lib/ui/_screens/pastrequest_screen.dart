import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:staylit/ui/_screens/drawer_screen.dart';
import 'package:staylit/ui/_screens/success_screen.dart';

import '../../widgets/custom_button.dart';

class PastRequestScreen extends StatelessWidget {
  const PastRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 15, 31, 45),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Past Job Requests"),
          backgroundColor: const Color.fromARGB(255, 15, 31, 45),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              30,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Material(
                    elevation: 1,
                    color: Color.fromARGB(255, 23, 46, 66),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(30),
                                      width: 74,
                                      height: 75,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage("images/people.png"),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Albin Alex",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Table(
                                      defaultColumnWidth: FixedColumnWidth(150),
                                      border: TableBorder.all(
                                          color: Colors.transparent, width: 1),
                                      children: [
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Service Request :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('Cleaning',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Date :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('10/02/2023',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Time :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('10:00AM',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Room Number :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('10',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        child:
                                            Image.asset("images/tickmark.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    elevation: 1,
                    color: Color.fromARGB(255, 23, 46, 66),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(30),
                                      width: 74,
                                      height: 75,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage("images/people.png"),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Albin Alex",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Table(
                                      defaultColumnWidth: FixedColumnWidth(150),
                                      border: TableBorder.all(
                                          color: Colors.transparent, width: 1),
                                      children: [
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Service Request :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('Cleaning',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Date :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('10/02/2023',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Time :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('10:00AM',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Room Number :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('10',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        child:
                                            Image.asset("images/tickmark.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    elevation: 1,
                    color: Color.fromARGB(255, 23, 46, 66),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(30),
                                      width: 74,
                                      height: 75,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage("images/people.png"),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Albin Alex",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Table(
                                      defaultColumnWidth: FixedColumnWidth(150),
                                      border: TableBorder.all(
                                          color: Colors.transparent, width: 1),
                                      children: [
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Service Request :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('Cleaning',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Date :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('10/02/2023',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Time :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('10:00AM',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                        TableRow(children: [
                                          Column(children: [
                                            Text('Room Number :',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                          Column(children: [
                                            Text('10',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ))
                                          ]),
                                        ]),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        child:
                                            Image.asset("images/tickmark.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
