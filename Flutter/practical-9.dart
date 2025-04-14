import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> contacts = [
    {'name': 'Prushti Bhalala', 'icon': Icons.person, 'color': Colors.blue},
    {'name': 'Densi Thummar', 'icon': Icons.person_outline, 'color': Colors.green},
    {'name': 'Nensi Antala', 'icon': Icons.account_circle, 'color': Colors.red},
    {'name': 'Mishva Sheladiya', 'icon': Icons.emoji_people, 'color': Colors.orange},
    {'name': 'Janvi Thanki', 'icon': Icons.face, 'color': Colors.purple},
    {'name': 'Sunny Chauhan', 'icon': Icons.person_pin, 'color': Colors.teal},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "GridView Example",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Container(
                width: 300,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[200],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: contacts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    final contact = contacts[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            contact['icon'],
                            color: contact['color'],
                            size: 30,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            contact['name'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
