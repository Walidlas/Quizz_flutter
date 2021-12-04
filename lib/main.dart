import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexQuestion = 0;
  int result = 0;
  var questions = [
    {
      "Question": "what is your favorite couleur?",
      "Answers": [
        {"Answer": "Red", "score": 20},
        {"Answer": "Purpel", "score": 05},
        {"Answer": "white", "score": 15},
      ]
    },
    {
      "Question": "what is your favorite animal?",
      "Answers": [
        {"Answer": "Dog", "score": 20},
        {"Answer": "Cat", "score": 10},
        {"Answer": "Horse", "score": 5},
      ]
    },
  ];

  void answered(int score) {
    setState(() {
      indexQuestion++;
    });
    //  print("Next Question N-" + indexQuestion.toString();
    result = result + score;
    return;
  }

  void reset() {
    setState(() {
      indexQuestion = 0;
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Quiz"),
            ),
            body: (questions.length > indexQuestion)
                ? Quiz(questions, answered, indexQuestion)
                : Result(result, reset)

            // Answer(answered,  "this is a new answer"),
            // Answer(answered,  "this is a new answer"),
            // Answer(answered,  "this is a new answer"),
            // Answer(answered,  "this is a new answer"),

            ));
  }
}
