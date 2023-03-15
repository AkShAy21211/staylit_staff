import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:staylit/ui/_screens/booking_screen.dart';
import 'package:staylit/widgets/custom_button.dart';
import 'package:staylit/widgets/custom_profile_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 31, 45),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "images/tickmark.png",
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              "You Have Been Assigned For This Job",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            SizedBox(
                width: 150,
                child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: MaterialButton(
                      onPressed: () {},
                      child: CustomButtton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => BookingScreen()));
                          },
                          text: "Go To Bookings"),
                    )))
          ],
        ),
      ),
    );
  }
}
