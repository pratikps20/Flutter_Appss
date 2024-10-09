import "package:flutter/material.dart";

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Indian FLag",
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indian Flag"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 45,
              color: Colors.orange,
            ),
            Container(
                width: 300,
                height: 45,
                color: Colors.white,
                child: Image.network(
                    "data:image/png;base64,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")),
            Container(height: 45, width: 300, color: Colors.green),
            Container(height: 250, width: 20, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
