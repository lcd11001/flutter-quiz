import 'package:flutter/material.dart';
import 'package:simple_quiz/l10n/generated/app_localizations.dart';
import 'package:simple_quiz/utils/utils.dart';

class AnswerSummary extends StatelessWidget {
  final String id;
  final String question;
  final String correctAnswer;
  final String userAnswer;
  final bool isCorrect;

  const AnswerSummary({
    super.key,
    required this.id,
    required this.question,
    required this.correctAnswer,
    required this.userAnswer,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(
                isCorrect ? Icons.check : Icons.close,
                color: isCorrect ? Colors.lightGreen : Colors.orange,
              ),
              const SizedBox(width: 10),
              Text(
                loc.txt_question(id),
                style: Utils.getSummaryTextStyle(context),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            question,
            style: Utils.getQuestionTextStyle(context, fontSize: 16),
          ),
          const SizedBox(height: 10),
          if (!isCorrect)
            Text(
              loc.txt_correct_answer(correctAnswer),
              style: Utils.getAnswerTextStyle(context, fontSize: 16),
            ),
          if (!isCorrect) const SizedBox(height: 10),
          Text(
            loc.txt_user_answer(userAnswer),
            style: Utils.getAnswerTextStyle(
              context,
              fontSize: 16,
              fontColor: isCorrect ? Colors.lightGreen : Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
