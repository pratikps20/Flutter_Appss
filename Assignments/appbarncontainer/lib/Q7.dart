import 'package:flutter/material.dart';

class Q7 extends StatelessWidget {
  const Q7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Demo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 300,
              child: Image.network(
                  "https://m.media-amazon.com/images/S/aplus-media-library-service-media/b8d898de-9636-4a06-857d-c28fc71ee0a3.__CR0,0,300,600_PT0_SX150_V1___.jpg"),
            ),
            Container(
              width: 150,
              height: 300,
              child: Image.network(
                  "https://m.media-amazon.com/images/S/aplus-media-library-service-media/b8d898de-9636-4a06-857d-c28fc71ee0a3.__CR0,0,300,600_PT0_SX150_V1___.jpg"),
            ),
            Container(
              width: 150,
              height: 300,
              child: Image.network(
                  "https://m.media-amazon.com/images/S/aplus-media-library-service-media/b8d898de-9636-4a06-857d-c28fc71ee0a3.__CR0,0,300,600_PT0_SX150_V1___.jpg"),
            ),
            Container(
              width: 150,
              height: 300,
              child: Image.network(
                  "https://m.media-amazon.com/images/S/aplus-media-library-service-media/b8d898de-9636-4a06-857d-c28fc71ee0a3.__CR0,0,300,600_PT0_SX150_V1___.jpg"),
            ),
            Container(
              width: 150,
              height: 300,
              child: Image.network(
                  "https://m.media-amazon.com/images/S/aplus-media-library-service-media/b8d898de-9636-4a06-857d-c28fc71ee0a3.__CR0,0,300,600_PT0_SX150_V1___.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
