import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;

  Result(this.totalScore, this.reset);

  String get resultPhrase {
    return "You did it! Your score: $totalScore";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text(resultPhrase),
            TextButton(child: Text('Restart Quiz!'), onPressed: reset,)
          ],
        )
    );
  }

}