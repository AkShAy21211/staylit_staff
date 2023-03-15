import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:staylit/ui/_screens/login_screen.dart';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        "images/staylit.png",
        filterQuality: FilterQuality.high,
        alignment: Alignment.bottomCenter,
      ),
      backgroundColor: const Color.fromARGB(255, 15, 31, 45),
      showLoader: true,
      logoWidth: 150,
      loaderColor: Colors.white,
      loadingText: const Text(
        "Loading...",
        style: TextStyle(color: Colors.white),
      ),
      navigator: const LoginScreen(),
      durationInSeconds: 3,
    );
  }
}
