import 'package:flutter/material.dart';

class Q5 extends StatelessWidget {
  const Q5({super.key});

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
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
                child: Image.network(
                    "https://pics.craiyon.com/2023-07-02/06404bdfa6e04bc5a2a103f4eb0ecaec.webp"),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRArw_JdmdlJQMOA-3VCQWjkuVXuc7rkvKXJQ&s"),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.amber,
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQJRCtHPQ63yVzBxijSts_44Ks8QDYRF_t6Q&s"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
