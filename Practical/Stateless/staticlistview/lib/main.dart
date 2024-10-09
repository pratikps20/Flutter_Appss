import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Demo",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 187, 167, 167),
        ),
        body: ListView(
          children: [
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfdSk9uUNTbASySGuZxfYGZxWOG6zLBhxnGw&s"),
            GestureDetector(
              onTap: () {
                print("Liked By....");
              },
              child: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            const Text(
              "Liked by",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfdSk9uUNTbASySGuZxfYGZxWOG6zLBhxnGw&s"),
            GestureDetector(
              onTap: () {
                print("Button Pressed");
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text(
                  "Press Me",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
