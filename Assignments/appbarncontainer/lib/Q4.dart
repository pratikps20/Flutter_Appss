import 'package:flutter/material.dart';

class Q4 extends StatelessWidget {
  const Q4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Hello Core2Web"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 200, width: 200, color: Colors.blue),
              Container(
                  height: 200,
                  width: 200,
                  color: const Color.fromARGB(255, 243, 33, 89)),
            ],
          ),
        ],
      ),
    );
  }
}
