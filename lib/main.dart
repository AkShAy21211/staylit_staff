import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:staylit/ui/_screens/splash_screen.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SplashPage(),
    );
  }
}
