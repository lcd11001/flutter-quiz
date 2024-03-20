import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_quiz/components/question_summary.dart';
import 'package:simple_quiz/data/questions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAnswers;

  final VoidCallback onResetQuiz;

  const ResultScreen({
    super.key,
    required this.selectedAnswers,
    required this.onResetQuiz,
  });

  // format results <{question, correctAnswer, userAnswer, isCorrect}>
  List<Map<String, Object>> getAnswerResults() {
    List<Map<String, Object>> results = [];

    for (int i = 0; i < selectedAnswers.length; i++) {
      final data = Questions.data[i];
      final question = data.question;
      final correctAnswer = data.answers[data.correctAnswer];
      final userAnswer = selectedAnswers[i];
      final isCorrect = userAnswer == correctAnswer;
      results.add({
        'id': '${i + 1}',
        'question': question,
        'correctAnswer': correctAnswer,
        'userAnswer': userAnswer,
        'isCorrect': isCorrect,
      });
    }

    return results;
  }

  @override
  Widget build(BuildContext context) {
    final answerResults = getAnswerResults();
    final correctAnswers =
        answerResults.where((item) => item['isCorrect'] as bool).length;
    final totalQuestions = Questions.data.length;

    final _ = AppLocalizations.of(context)!;

    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _.summary(correctAnswers, totalQuestions),
              style: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Container(
                color: Colors.transparent, // make debug color invisible
                child: QuestionSummary(summaryData: answerResults),
              ),
            ),
            const SizedBox(height: 0),
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
              label: Text(
                _.btn_reset,
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
