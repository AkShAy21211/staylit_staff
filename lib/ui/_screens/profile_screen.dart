import 'package:flutter/material.dart';
import 'package:staylit/widgets/custom_button.dart';
import 'package:staylit/widgets/custom_profile_button.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _name = "John Doe";
  String _job = "Cleaning";
  String _email = "johndoe@example.com";
  String _phone = "123-456-7890";
  String _address = "123 Main St, Anytown USA";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 15, 31, 45),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: const Color.fromARGB(255, 15, 31, 45),
          title: Text('Edit Profile'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://www.w3schools.com/w3images/avatar2.png'),
                ),
                SizedBox(height: 20),
                CustomProfileButtton(
                  onPressed: () {},
                  text: "Change Profile Image",
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: _name,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Name',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: _job,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Job',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _job = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: _email,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Email',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: _phone,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Phone',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _phone = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  initialValue: _address,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Address',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _address = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                MaterialButton(
                    color: Colors.white,
                    onPressed: () {},
                    child: CustomProfileButtton(
                        onPressed: () {}, text: "Save Changes"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
