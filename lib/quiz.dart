import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';

class Quiz extends StatelessWidget {
  var questions;
  Function answered;
  int indexQuestion;

  Quiz(this.questions, this.answered, this.indexQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[indexQuestion]["Question"] as String),
        ...(questions[indexQuestion]["Answers"] as List).map((element) =>
            Answer(() => answered(element["score"] as int), element["Answer"])),
      ],
    );
  }
}
