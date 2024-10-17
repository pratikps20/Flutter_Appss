import 'package:flutter/material.dart';

class Q1 extends StatelessWidget {
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Demo"),
        actions: const [
          Icon(Icons.edit),
          const SizedBox(width: 20),
          Icon(Icons.delete),
        ],
      ),
    );
  }
}
