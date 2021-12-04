import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questions;
  Question(this.questions);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      width: double.infinity,
      child: Text(
        questions,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
