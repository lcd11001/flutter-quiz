import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;

  final VoidCallback onResetQuiz;

  const ResultScreen({
    super.key,
    required this.selectedAnswers,
    required this.onResetQuiz,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('result screen'),
          ElevatedButton(
            onPressed: onResetQuiz,
            child: Text('reset quiz'),
          ),
        ],
      ),
    );
  }
}
