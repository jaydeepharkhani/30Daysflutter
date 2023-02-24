import "package:flutter/material.dart";
import 'package:flutter_application_1/Pages/Home.dart';
import 'package:flutter_application_1/Pages/login.dart';
import 'package:flutter_application_1/Utility/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(title: "sampleapp", home: LoginPage1()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // home: Homepage(),
      // initialRoute: Myroutes.loginRoute,
      // routes: {
      //   "/": (context) => LoginPage1(),
      //   Myroutes.homeRoute: (context) => Homepage(),
      //   Myroutes.loginRoute: (context) => LoginPage1(),
      // },
    );
  }
}
