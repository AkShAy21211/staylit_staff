import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:staylit/ui/_screens/drawer_screen.dart';
import 'package:staylit/ui/_screens/success_screen.dart';
import 'package:staylit/widgets/custom_profile_button.dart';

import '../../widgets/custom_button.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

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
        title: Text("New Job Requests"),
        backgroundColor: const Color.fromARGB(255, 15, 31, 45),
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
                  const SizedBox(height: 30),
                  Material(
                    elevation: 1,
                    color: Color.fromARGB(255, 23, 46, 66),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Stack(
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
                                      image: AssetImage("images/people.png"),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      color: Colors.green,
                                      onPressed: () {},
                                      child: CustomButtton(
                                          onPressed: () {
                                            Navigator.of(context).pushReplacement(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SuccessScreen()));
                                          },
                                          text: "Accept"),
                                    ),
                                    SizedBox(
                                      width: 110,
                                    ),
                                    MaterialButton(
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      onPressed: () {},
                                      child: CustomButtton(
                                          onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 23, 46, 66),
                                                    title: const Text(
                                                      "Are You Sure You Want To Move This Job To Wating List",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white),
                                                    ),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () => Navigator
                                                                .of(context)
                                                            .pushReplacement(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            RequestScreen())),
                                                        child: const Text('NO'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () => Navigator
                                                                .of(context)
                                                            .pushReplacement(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            RequestScreen())),
                                                        child:
                                                            const Text('YES'),
                                                      ),
                                                    ],
                                                  )),
                                          text: "Wating list"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
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
                    child: Stack(
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
                                      image: AssetImage("images/people.png"),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      color: Colors.green,
                                      onPressed: () {},
                                      child: CustomButtton(
                                          onPressed: () {
                                            Navigator.of(context).pushReplacement(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SuccessScreen()));
                                          },
                                          text: "Accept"),
                                    ),
                                    SizedBox(
                                      width: 110,
                                    ),
                                    MaterialButton(
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      onPressed: () {},
                                      child: CustomButtton(
                                          onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 23, 46, 66),
                                                    title: const Text(
                                                      "Are You Sure You Want To Move This Job To Wating List",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white),
                                                    ),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () => Navigator
                                                                .of(context)
                                                            .pushReplacement(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            RequestScreen())),
                                                        child: const Text('NO'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () => Navigator
                                                                .of(context)
                                                            .pushReplacement(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            RequestScreen())),
                                                        child:
                                                            const Text('YES'),
                                                      ),
                                                    ],
                                                  )),
                                          text: "Wating list"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
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
                    child: Stack(
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
                                      image: AssetImage("images/people.png"),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      color: Colors.green,
                                      onPressed: () {},
                                      child: CustomButtton(
                                          onPressed: () {
                                            Navigator.of(context).pushReplacement(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SuccessScreen()));
                                          },
                                          text: "Accept"),
                                    ),
                                    SizedBox(
                                      width: 110,
                                    ),
                                    MaterialButton(
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      onPressed: () {},
                                      child: CustomButtton(
                                          onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 23, 46, 66),
                                                    title: const Text(
                                                      "Are You Sure You Want To Move This Job To Wating List",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.white),
                                                    ),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        onPressed: () => Navigator
                                                                .of(context)
                                                            .pushReplacement(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            RequestScreen())),
                                                        child: const Text('NO'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () => Navigator
                                                                .of(context)
                                                            .pushReplacement(
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            RequestScreen())),
                                                        child:
                                                            const Text('YES'),
                                                      ),
                                                    ],
                                                  )),
                                          text: "Wating list"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
