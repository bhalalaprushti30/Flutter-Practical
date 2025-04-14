import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> contacts = [
    'Prushti Bhalala',
    'Densi Thummar',
    'Nensi Antala',
    'Mishva Sheladiya',
    'Janvi Thanki',
    'Sunny Chauhan',
    'Harsh Nagar',
    'Hansa Vaghela',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact List'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.blue),
                title: Text(contacts[index]),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tapped on ${contacts[index]}')),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
