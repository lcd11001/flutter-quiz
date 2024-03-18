import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

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
    final _ = AppLocalizations.of(context)!;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            _.txt_question(id),
            style: GoogleFonts.odibeeSans(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            question,
            style: GoogleFonts.lato(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          if (!isCorrect)
            Text(
              _.txt_correct_answer(correctAnswer),
              style: GoogleFonts.metal(
                fontSize: 16,
                color: Colors.green,
              ),
            ),
          if (!isCorrect) const SizedBox(height: 10),
          Text(
            _.txt_user_answer(userAnswer),
            style: GoogleFonts.metal(
              fontSize: 16,
              color: isCorrect ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
