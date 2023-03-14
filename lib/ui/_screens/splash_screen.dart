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
        alignment: Alignment.bottomCenter,
      ),
      backgroundColor: Color.fromARGB(255, 15, 31, 45),
      showLoader: true,
      loaderColor: Colors.white,
      loadingText: Text(
        "Loading...",
        style: TextStyle(color: Colors.white),
      ),
      navigator: LoginScreen(),
      durationInSeconds: 5,
    );
  }
}
