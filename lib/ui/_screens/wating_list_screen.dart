
import 'package:flutter/material.dart';
import 'package:staylit/ui/_screens/booking_screen.dart';


import '../../widgets/custom_button.dart';

class WatingListScreen extends StatelessWidget {
  const WatingListScreen({super.key});

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
        title: const Text("Wating Lists"),
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
                                  RichText(
                                    text: const TextSpan(
                                        text: "Pending",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange)),
                                  ),
                                  const SizedBox(
                                    width: 110,
                                  ),
                                  MaterialButton(
                                    color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    onPressed: () {},
                                    child: CustomButtton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushReplacement(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const BookingScreen()));
                                        },
                                        text: "Accept"),
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
                                  RichText(
                                    text: const TextSpan(
                                        text: "Pending",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange)),
                                  ),
                                  const SizedBox(
                                    width: 110,
                                  ),
                                  MaterialButton(
                                    color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    onPressed: () {},
                                    child: CustomButtton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushReplacement(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const BookingScreen()));
                                        },
                                        text: "Accept"),
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
                                  RichText(
                                    text: const TextSpan(
                                        text: "Pending",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange)),
                                  ),
                                  const SizedBox(
                                    width: 110,
                                  ),
                                  MaterialButton(
                                    color: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    onPressed: () {},
                                    child: CustomButtton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushReplacement(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const BookingScreen()));
                                        },
                                        text: "Accept"),
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
