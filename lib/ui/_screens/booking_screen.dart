import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:staylit/ui/_screens/drawer_screen.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        drawer: const DrawwerScreen(),
        backgroundColor: const Color.fromARGB(255, 15, 31, 45),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 15, 31, 45),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(
                30,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    const Text(
                      " Active job Requests ",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 30),
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 338,
                          height: 312,
                          decoration: const BoxDecoration(
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
                                  margin: const EdgeInsets.all(30),
                                  width: 74,
                                  height: 75,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/people.png"),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Albin Alex",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 45,
                                top: 40,
                              ),
                              child: Row(
                                children: [
                                  const Text("Service Requests :"),
                                  const Text(
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
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 20, top: 200),
                                  child: Row(
                                    children: [
                                      const Text("       Room Number:"),
                                      const Text(
                                        "  10",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 45, top: 230),
                          child: Row(
                            children: [
                              const Text("Floor Number:"),
                              const Text(
                                " 2",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 338,
                          height: 312,
                          decoration: const BoxDecoration(
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
                                  margin: const EdgeInsets.all(30),
                                  width: 74,
                                  height: 75,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/people.png"),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Albin Alex",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 45, top: 40),
                              child: Row(
                                children: [
                                  const Text("Service Requests :"),
                                  const Text(
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
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 20, top: 200),
                                  child: Row(
                                    children: [
                                      const Text("       Room Number:"),
                                      const Text(
                                        "  10",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 45, top: 230),
                          child: Row(
                            children: [
                              const Text("Floor Number:"),
                              const Text(
                                " 2",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 338,
                          height: 312,
                          decoration: const BoxDecoration(
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
                                  margin: const EdgeInsets.all(30),
                                  width: 74,
                                  height: 75,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/people.png"),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Albin Alex",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 45, top: 40),
                              child: Row(
                                children: [
                                  const Text("Service Requests :"),
                                  const Text(
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
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 20, top: 200),
                                  child: Row(
                                    children: [
                                      const Text("       Room Number:"),
                                      const Text(
                                        "  10",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 45, top: 230),
                          child: Row(
                            children: [
                              const Text("Floor Number:"),
                              const Text(
                                " 2",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
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
