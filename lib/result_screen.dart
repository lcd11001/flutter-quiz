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
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('You have answered X out of Y questions correctly!'),
            const SizedBox(height: 30),
            const Text('Your answers:'),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: onResetQuiz,
              style: OutlinedButton.styleFrom(
                //fixedSize: const Size(200, 50),
                foregroundColor: Colors.white,
                side: const BorderSide(
                  color: Colors.purpleAccent,
                  width: 1,
                ),
              ),
              icon: const Icon(Icons.refresh),
              label: Text('reset quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
