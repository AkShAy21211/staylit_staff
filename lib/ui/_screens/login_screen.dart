import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staylit/ui/_screens/forgetpassword_scren.dart';
import 'package:staylit/ui/_screens/home_screen/home_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color.fromARGB(255, 15, 31, 45),
          body: Padding(
            padding: const EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: w,
                    height: h * 0.3,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          filterQuality: FilterQuality.high,
                          image: AssetImage("images/staylit.png"),
                          fit: BoxFit.contain),
                    ),
                  ),
                  Container(
                    width: w,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Sign Into Your Account",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email id",
                            prefixIcon: const Icon(Icons.email),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(children: [
                          Container(
                            margin: const EdgeInsets.only(left: 0, right: 0),
                            child: RichText(
                              text: TextSpan(
                                text: "  Forget Password",
                                style: const TextStyle(fontSize: 16),
                                recognizer: TapGestureRecognizer()
                                  ..onTap =
                                      () => Get.to(() => const ForgetScreen()),
                              ),
                            ),
                          )
                        ])
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Center(
                      child: SizedBox(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Text("Log In"),
                    ),
                  )),
                  SizedBox(
                    height: w * 0.1,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Dont Have An Account",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: " Create",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => const SignUpScreen()),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
