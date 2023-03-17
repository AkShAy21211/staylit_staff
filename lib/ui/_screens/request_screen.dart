
import 'package:flutter/material.dart';

import 'package:staylit/ui/_screens/success_screen.dart';


import '../../widgets/custom_button.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 31, 45),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("New Job Requests"),
        backgroundColor: const Color.fromARGB(255, 15, 31, 45),
      ),
      body: SingleChildScrollView(
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
                  color: const Color.fromARGB(255, 23, 46, 66),
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
                                defaultColumnWidth: const FixedColumnWidth(150),
                                border: TableBorder.all(
                                    color: Colors.transparent, width: 1),
                                children: [
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Service Request :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('Cleaning',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Date :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('10/02/2023',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Time :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('10:00AM',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Room Number :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('10',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                ],
                              ),
                              const SizedBox(
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
                                  const SizedBox(
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
                                                      const Color.fromARGB(
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
                                                                          const RequestScreen())),
                                                      child: const Text('NO'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () => Navigator
                                                              .of(context)
                                                          .pushReplacement(
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const RequestScreen())),
                                                      child:
                                                          const Text('YES'),
                                                    ),
                                                  ],
                                                )),
                                        text: "Wating list"),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 1,
                  color: const Color.fromARGB(255, 23, 46, 66),
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
                                defaultColumnWidth: const FixedColumnWidth(150),
                                border: TableBorder.all(
                                    color: Colors.transparent, width: 1),
                                children: [
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Service Request :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('Cleaning',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Date :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('10/02/2023',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Time :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('10:00AM',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Room Number :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('10',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                ],
                              ),
                              const SizedBox(
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
                                  const SizedBox(
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
                                                      const Color.fromARGB(
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
                                                                          const RequestScreen())),
                                                      child: const Text('NO'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () => Navigator
                                                              .of(context)
                                                          .pushReplacement(
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const RequestScreen())),
                                                      child:
                                                          const Text('YES'),
                                                    ),
                                                  ],
                                                )),
                                        text: "Wating list"),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 1,
                  color: const Color.fromARGB(255, 23, 46, 66),
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
                                defaultColumnWidth: const FixedColumnWidth(150),
                                border: TableBorder.all(
                                    color: Colors.transparent, width: 1),
                                children: [
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Service Request :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('Cleaning',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Date :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('10/02/2023',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Time :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('10:00AM',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                  TableRow(children: [
                                    Column(children: const [
                                      Text('Room Number :',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                    Column(children: const [
                                      Text('10',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ))
                                    ]),
                                  ]),
                                ],
                              ),
                              const SizedBox(
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
                                  const SizedBox(
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
                                                      const Color.fromARGB(
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
                                                                          const RequestScreen())),
                                                      child: const Text('NO'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () => Navigator
                                                              .of(context)
                                                          .pushReplacement(
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const RequestScreen())),
                                                      child:
                                                          const Text('YES'),
                                                    ),
                                                  ],
                                                )),
                                        text: "Wating list"),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
