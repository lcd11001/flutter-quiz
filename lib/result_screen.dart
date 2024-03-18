import 'package:flutter/material.dart';
import 'package:simple_quiz/components/question_summary.dart';
import 'package:simple_quiz/data/questions.dart';

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
      final data = questions[i];
      final question = data.question;
      final correctAnswer = data.answers[data.correctAnswer];
      final userAnswer = selectedAnswers[i];
      final isCorrect = userAnswer == correctAnswer;
      results.add({
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
            QuestionSummary(summaryData: getAnswerResults()),
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
