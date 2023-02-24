import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utility/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 60),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "User Name",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: TextStyle(
                      fontSize: 10,
                      fontFamily: GoogleFonts.lato().fontFamily,
                    ),
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    onPressed: () {
                      // print("Hello Login Form");
                      Navigator.pushNamed(context, Myroutes.homeRoute);
                    })
              ],
            ),
          )
        ],
      ),
    ));
  }
}
