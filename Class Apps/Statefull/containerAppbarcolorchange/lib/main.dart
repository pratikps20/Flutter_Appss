import "package:flutter/material.dart";

void main() {
  runApp(const My());
}

class My extends StatefulWidget {
  const My({super.key});
  @override
  State createState() => _My();
}

bool c = true;

class _My extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container"),
          centerTitle: true,
          backgroundColor: (c) ? Colors.amber : Colors.pink,
        ),
        body: Center(
          child: Container(
              height: 250, width: 250, color: (c) ? Colors.blue : Colors.black),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (c == true) {
              c = false;
            } else {
              c = true;
            }
            setState(() {});
          },
          child: const Text("Change"),
        ),
      ),
    );
  }
}
