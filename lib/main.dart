import 'package:flutter/material.dart';
import 'package:staylit/ui/screens/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main(List<String> args) async {
  await Supabase.initialize(
    url: 'https://uidlngnandekepjmjxjg.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVpZGxuZ25hbmRla2Vwam1qeGpnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzc1MDkzMTEsImV4cCI6MTk5MzA4NTMxMX0.KkieRhq0C36pOjOREtG1bqjdLU2fmCN0v727Dkwzd1c',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.blue[50],
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          iconColor: Colors.blueAccent,
          prefixIconColor: Colors.blueAccent,
          suffixIconColor: Colors.blueAccent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
