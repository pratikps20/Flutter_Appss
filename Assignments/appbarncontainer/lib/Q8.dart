import 'package:flutter/material.dart';

class Q8 extends StatelessWidget {
  const Q8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Demo"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.amberAccent,
            border: Border(
              top: BorderSide(color: Colors.red),
              left: BorderSide(color: Colors.red),
              right: BorderSide(color: Colors.red),
              bottom: BorderSide(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
