import "package:flutter/material.dart";
// import 'package:flutter_application_1/Pages/Test_Page.dart';
// import 'package:flutter_application_1/Utility/routes.dart';
import 'package:flutter_application_1/Pages/Home.dart';
import 'package:flutter_application_1/Pages/login.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    title: "sampleapp",
    initialRoute: '/homescreen',
    routes: {
      "/": (context) => LoginPage(),
      "/homescreen": (context) => Homepage(),
      // Myroutes.homeRoute: (context) => Homepage(),
      // "/loginscreen": (context) => LoginPage(),
    },
  ));
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
      debugShowCheckedModeBanner: false,
    );
  }
}
