import 'package:flutter/material.dart';

class Q2 extends StatelessWidget {
  const Q2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Demo"),
        centerTitle: true,
        actions: const [Icon(Icons.heart_broken)],
      ),
    );
  }
}
