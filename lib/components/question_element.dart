// Generate QuestionElement widget
import 'package:flutter/material.dart';

import 'package:simple_quiz/components/answer_button.dart';
import 'package:simple_quiz/config.dart';

class QuestionElement extends StatelessWidget {
  final String question;
  final List<String> answers;
  final ReturnCallback<void, String> onAnswerSelected;
  final ReturnCallback<String, String> localizeCallback;

  const QuestionElement({
    super.key,
    required this.question,
    required this.answers,
    required this.onAnswerSelected,
    required this.localizeCallback,
  });

  List<AnswerButton> generateAnwerWidgets() {
    return answers.map((answer) {
      return AnswerButton(
        localizeCallback: localizeCallback,
        answer: answer,
        onAnswerSelected: onAnswerSelected,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          localizeCallback(question),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 40),
        Column(
          children: generateAnwerWidgets(),
        ),
      ],
    );
  }
}
