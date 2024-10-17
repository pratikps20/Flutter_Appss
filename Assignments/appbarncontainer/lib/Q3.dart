import 'package:flutter/material.dart';

class Q3 extends StatelessWidget {
  const Q3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Hello Core2Web"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(height: 200, width: 360, color: Colors.blue),
      ),
    );
  }
}
