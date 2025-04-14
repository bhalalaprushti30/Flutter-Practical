import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Practical_4"),
      ),
      body:
      RichText(
          text: const TextSpan(
              text:'Prushti',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.blue,
                fontSize: 25,
              ),
              children: [
                TextSpan(
                  text:'Bhalala',
                  style: TextStyle(color: Colors.pink,fontSize: 25,),
                ),
              ]
          )),
    ),
  ));
}
