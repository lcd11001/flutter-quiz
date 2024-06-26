// generate AnswerButton class
import 'package:flutter/material.dart';

import 'package:simple_quiz/config.dart';
import 'package:simple_quiz/utils/utils.dart';

class AnswerButton extends StatelessWidget {
  final String answerId;
  final String answer;
  final ReturnCallback<void, String> onAnswerSelected;

  const AnswerButton({
    super.key,
    required this.answerId,
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
          vertical: 15,
          horizontal: 30,
        ),
      ),
      onPressed: () {
        onAnswerSelected(answer);
      },
      child: Text(
        answer,
        style: Utils.getAnswerTextStyle(context),
        textAlign: TextAlign.center,
      ),
    );
  }
}
