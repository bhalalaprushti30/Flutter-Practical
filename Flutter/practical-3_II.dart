import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Practical_4"),
      ),
      body: Container(
        width: 200,
        height: 100,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.blueAccent,border: Border.all(width: 5,color:
        Colors.black)),
        child: Text(
          'Hello, Prushti!',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ));
}
