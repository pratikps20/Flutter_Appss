import "package:flutter/material.dart";

void main() {
  runApp(const Counterapp());
}

class Counterapp extends StatefulWidget {
  const Counterapp({super.key});

  @override
  State createState() => _Counterappstate();
}

class _Counterappstate extends State {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("$count"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
