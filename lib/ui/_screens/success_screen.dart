import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:staylit/ui/_screens/booking_screen.dart';

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
              "Service Confirmed",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
                width: 180,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const BookingScreen()));
                      },
                      child: const Text("Go To Bookings")),
                ))
          ],
        ),
      ),
    );
  }
}
