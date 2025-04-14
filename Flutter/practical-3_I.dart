import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Practical_3"),
      ),
      body: Icon(Icons.access_alarm_rounded,color: Colors.red, size: 50,),
    ),
  ));
}
