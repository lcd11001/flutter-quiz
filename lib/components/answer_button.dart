// generate AnswerButton class
import 'package:flutter/material.dart';

import 'package:simple_quiz/config.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final ReturnCallback<void, String> onAnswerSelected;

  const AnswerButton({
    super.key,
    required this.answer,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple.shade700,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
      ),
      onPressed: () {
        onAnswerSelected(answer);
      },
      child: Text(
        answer,
      ),
    );
  }
}
