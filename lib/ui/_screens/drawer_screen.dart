import 'package:flutter/material.dart';
import 'package:staylit/ui/_screens/home_screen.dart';
import 'package:staylit/ui/_screens/login_screen.dart';
import 'package:staylit/ui/_screens/profile_screen.dart';
import 'package:staylit/ui/_screens/setting_screen.dart';

class DrawwerScreen extends StatelessWidget {
  const DrawwerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 15, 31, 45),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 30,
              bottom: 10,
            ),
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: const Color.fromARGB(255, 25, 60, 89),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/people.png"),
                      ),
                    ),
                  ),
                  const Text(
                    "David John",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const Text(
                    "david@gmail.com",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              color: Colors.white,
            ),
            title: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: const Text(
                "Home",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              color: Colors.white,
            ),
            title: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: const Text(
                "Profile",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SettingScreen()));
              },
              color: Colors.white,
            ),
            title: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              child: const Text(
                "Settings",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const LoginScreen()));
              },
              color: Colors.white,
            ),
            title: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: const Text(
                "Logout",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
