import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:staylit/ui/_screens/drawer_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const DrawwerScreen(),
        backgroundColor: const Color.fromARGB(255, 15, 31, 45),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 15, 31, 45),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: const [
                SizedBox(
                  height: 50,
                ),
                TextField(),
                SizedBox(height: 30),
                Text(
                  "Dark Mode",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 30),
                Text(
                  "Dark Mode",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
