import 'package:flutter/material.dart';

import 'answer_summary.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionSummary({
    super.key,
    required this.summaryData,
  });

  Iterable<Widget> generateSummaryWidgets() {
    return summaryData.map((item) {
      return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: AnswerSummary(
          id: item['id'] as String,
          question: item['question'] as String,
          correctAnswer: item['correctAnswer'] as String,
          userAnswer: item['userAnswer'] as String,
          isCorrect: item['isCorrect'] as bool,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...generateSummaryWidgets(),
        ],
      ),
    );
  }
}
