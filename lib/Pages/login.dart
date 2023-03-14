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
  final _Formkey = GlobalKey<FormState>();

  MovetoHome(BuildContext context) async {
    // if (_Formkey.currentState.validate()) {
    setState(() {
      blnChangebutton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, "/homescreen");
    setState(() {
      blnChangebutton = false;
    });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _Formkey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/Login_2.png",
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
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Pleaes enter User Name";
                        // print("Enter User Name");
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Hello";
                      } else if (value.toString().length < 6) {
                        //.print("Password length should be atleast1 6");
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.green,
                    child: InkWell(
                      onTap: () => MovetoHome(context),
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
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
