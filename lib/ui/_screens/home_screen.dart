import 'dart:async';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:staylit/ui/_screens/booking_screen.dart';
import 'package:staylit/ui/_screens/drawer_screen.dart';
import 'package:staylit/ui/_screens/pastrequest_screen.dart';
import 'package:staylit/ui/_screens/request_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: DrawwerScreen(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 15, 31, 45),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Stack(
          children: [
            Image.asset(
              "images/bg.jpg",
              gaplessPlayback: true,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            ListView(
              children: [
                SafeArea(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 250, top: 120),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 1, vertical: 0),
                        child: Material(
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 15, 31, 45),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: GridView.count(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                crossAxisCount: 2,
                                crossAxisSpacing: 1,
                                mainAxisSpacing: 1,
                                children: [
                                  Column(
                                    children: [
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      ServiceButton(
                                          icon: MdiIcons.phone,
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RequestScreen()));
                                          },
                                          text: "Service Request")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      ServiceButton(
                                          icon: MdiIcons.phone,
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        PastRequestScreen()));
                                          },
                                          text: "Past Service\nRequest")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      ServiceButton(
                                          icon: Icons.settings,
                                          onPressed: () {},
                                          text: "Settings")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      ServiceButton(
                                          icon: MdiIcons.book,
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        BookingScreen()));
                                          },
                                          text: " Bookings")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class ServiceButton extends StatelessWidget {
  final IconData icon;
  final Function() onPressed;
  final String text;
  const ServiceButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage(
                "images/menubg.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
