import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Practical_4"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        textDirection: TextDirection.ltr,
        children : [Text('Prushti',style:TextStyle(color:Colors.pink,fontWeight:FontWeight.bold,
            fontSize: 25.0),),
          Text('Prushti1',style:TextStyle(color:Colors.green,fontWeight: FontWeight.bold,
              fontSize: 25.0),),
          Text('Prushti3',style:TextStyle(color:Colors.blue,fontWeight: FontWeight.bold,
              fontSize: 25.0),),
        ],
      ),
    ),
  ));
}
