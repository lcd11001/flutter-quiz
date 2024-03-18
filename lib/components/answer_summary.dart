import 'package:flutter/material.dart';

class AnswerSummary extends StatelessWidget {
  final int questionIndex;
  final String question;
  final String correctAnswer;
  final String userAnswer;
  final bool isCorrect;

  const AnswerSummary({
    super.key,
    required this.questionIndex,
    required this.question,
    required this.correctAnswer,
    required this.userAnswer,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Question ${questionIndex + 1}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            question,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Correct answer: $correctAnswer',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Your answer: $userAnswer',
            style: TextStyle(
              fontSize: 16,
              color: isCorrect ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
