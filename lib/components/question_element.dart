// Generate QuestionElement widget
import 'package:flutter/material.dart';

import 'package:simple_quiz/components/answer_button.dart';
import 'package:simple_quiz/config.dart';

class QuestionElement extends StatelessWidget {
  final String question;
  final List<String> answers;
  final ReturnCallback<void, String> onAnswerSelected;

  const QuestionElement({
    super.key,
    required this.question,
    required this.answers,
    required this.onAnswerSelected,
  });

  Iterable<Widget> generateAnwerWidgets() {
    return answers.map((answer) {
      return Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: AnswerButton(
          answer: answer,
          onAnswerSelected: onAnswerSelected,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          ...generateAnwerWidgets(),
        ],
      ),
    );
  }
}
