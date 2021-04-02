
import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List questions;

  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }

}