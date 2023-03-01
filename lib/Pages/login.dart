import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utility/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool blnChangebutton = false;
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
            "Welcome $name",
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
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
                InkWell(
                  onTap: () async {
                    setState(() {
                      blnChangebutton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, "/homescreen");
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: blnChangebutton ? 50 : 100,
                    height: 30,
                    // color: Colors.orange,
                    alignment: Alignment.center,
                    child: blnChangebutton
                        ? Icon(Icons.done, color: Colors.white)
                        : Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 38, 128, 231),
                      // shape: blnChangebutton
                      //     ? BoxShape.circle
                      //     : BoxShape.rectangle,
                      // borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
