import 'package:flutter/material.dart';

class Q6 extends StatelessWidget {
  const Q6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(height: 200, width: 200, color: Colors.amber),
              const SizedBox(height: 20),
              Container(height: 200, width: 200, color: Colors.blue),
              const SizedBox(height: 20),
              Container(height: 200, width: 200, color: Colors.deepOrange),
              const SizedBox(height: 20),
              Container(height: 200, width: 200, color: Colors.yellow),
              const SizedBox(height: 20),
              Container(height: 200, width: 200, color: Colors.purple),
              const SizedBox(height: 20),
              Container(height: 200, width: 200, color: Colors.pink),
              const SizedBox(height: 20),
              Container(height: 200, width: 200, color: Colors.amberAccent),
              const SizedBox(height: 20),
              Container(height: 200, width: 200, color: Colors.blueAccent),
              const SizedBox(height: 20),
              Container(height: 200, width: 200, color: Colors.pinkAccent),
              const SizedBox(height: 20),
              Container(height: 200, width: 200, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
