import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  State createState() => _MyHomePage();
}

class _MyHomePage extends State {
  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            const Text(
              "BottomSheet Demo",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 250,
              color: Colors.pinkAccent,
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Bottomsheet Demo",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openBottomSheet();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
