import "package:flutter/material.dart";
import "package:flutter_application_1/Widget/drawer.dart";

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 76, 224, 113),
        title: Text("Silver Technologies"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello Welcome"),
        ),
      ),
      drawer: MyDrawer(),
      // backgroundColor: Color.fromARGB(255, 221, 252, 215),
    );
  }
}
