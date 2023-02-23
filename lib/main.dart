import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(title: "sampleapp", home: Homepage()));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Silver Technologies"),
      ),
      body: Container(
        child: Center(child: Text("Hello Flutter")),
      ),
    );
  }
}
