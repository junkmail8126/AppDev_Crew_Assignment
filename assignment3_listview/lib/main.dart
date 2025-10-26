import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewScreen(),
    );
  }
}

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  final List<String> items = const [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Grapes',
    'Mango',
    'Orange',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple ListView')),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(items[index], style: const TextStyle(fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
