import 'package:flutter/material.dart';
import 'package:second/home.dart';
import 'package:second/home.dart';
import 'package:second/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => homepage(),
        "login": (context) => LoginPage()
      },
    );
  }
}
