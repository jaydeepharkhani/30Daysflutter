import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  void onsendbuttonPress() {
    print("Send Button Press");
  }

  void onSearchbuttonPress() {
    print("Search Button Press");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 224, 113),
        title: Text("Silver Technologies"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome"),
        ),
      ),
      drawer: Drawer(),
      backgroundColor: Color.fromARGB(255, 221, 252, 215),
    );
  }
}
