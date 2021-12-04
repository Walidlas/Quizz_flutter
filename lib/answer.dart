import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback answared;
  String answer;
  Answer(this.answared, this.answer);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
          onPressed: answared,
          child: Text(
            answer,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
