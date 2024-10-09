import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizApp();
}

class _QuizApp extends State {
  int currentQuestionIndex = 0;
  int selectedansindex = -1;
  int count = 0;

  List<Map> allQuestions = [
    {
      "questions": "Who is Current Prime Minister of India?",
      "options": [
        "Narendra Modi",
        "Rahul Gandhi",
        "Manmohan Singh",
        "Arvind Kejriwal"
      ],
      "correctAnswer": 0
    },
    {
      "questions": "Who is Current Prime Minister of Italy?",
      "options": [
        "Mario Draghi",
        "Giorgia Meloni",
        "Giuseppe Conte",
        "Sergio Mattarella"
      ],
      "correctAnswer": 1
    },
    {
      "questions": "What is the code name of the first nuclear test of India?",
      "options": ["Smiling Buddha", "Project 596", "Shakti", "Agni"],
      "correctAnswer": 0
    },
    {
      "questions": "What is the rank of India in world GDP?",
      "options": ["First", "Fifth", "Third", "Fourth"],
      "correctAnswer": 1
    },
    {
      "questions": "LAC is an effective border between India and - - - -  ?",
      "options": ["Pakistan", "Bhutan", "Bangladesh", "China"],
      "correctAnswer": 3
    },
    {
      "questions": "What is the code name for Pokhran Nuclear Test 2 ?",
      "options": [
        "Operatin Shakti",
        "Smiling Buddha",
        "Operatin Maa",
        "operation Research"
      ],
      "correctAnswer": 0
    }
  ];

  WidgetStateProperty<Color?> checkans(int ansindex) {
    if (selectedansindex != -1) {
      if (ansindex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedansindex == ansindex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionpage = true;

  @override
  Widget build(BuildContext context) {
    return isquesscreen();
  }

  Scaffold isquesscreen() {
    if (questionpage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 160,
                ),
                Text(
                  "Question:${currentQuestionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 80,
              child: Text(
                allQuestions[currentQuestionIndex]["questions"],
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkans(0),
                ),
                onPressed: () {
                  if (selectedansindex == -1) {
                    selectedansindex = 0;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]["options"][0],
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkans(1),
                ),
                onPressed: () {
                  if (selectedansindex == -1) {
                    selectedansindex = 1;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]["options"][1],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkans(2),
                ),
                onPressed: () {
                  if (selectedansindex == -1) {
                    selectedansindex = 2;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]["options"][2],
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkans(3),
                ),
                onPressed: () {
                  if (selectedansindex == -1) {
                    selectedansindex = 3;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]["options"][3],
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedansindex != -1) {
              if (selectedansindex ==
                  allQuestions[currentQuestionIndex]["correctAnswer"]) {
                count++;
              }
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
              } else {
                questionpage = false;
              }
              selectedansindex = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "data:image/jpeg;base64,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",
                height: 400,
              ),
              const SizedBox(
                height: 11,
              ),
              const Text(
                "Congragulations: ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Score:",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                "$count / ${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
