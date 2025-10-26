import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InputDisplayScreen(),
    );
  }
}

class InputDisplayScreen extends StatefulWidget {
  const InputDisplayScreen({super.key});

  @override
  State<InputDisplayScreen> createState() => _InputDisplayScreenState();
}

class _InputDisplayScreenState extends State<InputDisplayScreen> {
  final TextEditingController _controller = TextEditingController();
  String displayedText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Input & Display')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _controller),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  displayedText = _controller.text;
                });
              },
              child: const Text('Display Text'),
            ),
            const SizedBox(height: 20),
            Text(
              displayedText,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
