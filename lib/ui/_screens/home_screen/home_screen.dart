import 'dart:async';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:staylit/ui/_screens/booking_screen.dart';
import 'package:staylit/ui/_screens/drawer_screen.dart';
import 'package:staylit/ui/_screens/pastrequest_screen.dart';
import 'package:staylit/ui/_screens/request_screen.dart';
import 'package:staylit/ui/_screens/setting_screen.dart';
import 'package:staylit/ui/_screens/wating_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: const DrawwerScreen(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 15, 31, 45),
        ),
        backgroundColor: const Color.fromARGB(255, 15, 31, 45),
        body: ListView(
          children: [
            SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 250, top: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 0),
                    child: Material(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: GridView.count(
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 2),
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
                                                  const RequestScreen()));
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
                                    icon: MdiIcons.phoneClock,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const PastRequestScreen()));
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
                                    icon: MdiIcons.clock,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WatingListScreen()));
                                    },
                                    text: "Wating List")
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
                                                  const BookingScreen()));
                                    },
                                    text: " Bookings")
                              ],
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                ServiceButton(
                                    icon: Icons.settings,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SettingScreen()));
                                    },
                                    text: " Settings")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
        width: 150,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
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
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
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
