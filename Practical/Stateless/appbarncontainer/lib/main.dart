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
          title: const Text("DEMO",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.red)),
          backgroundColor: Colors.white,
          actions: const [
            Icon(Icons.favorite),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.card_travel),
          ],
        ),
      ),
    );
  }
}
