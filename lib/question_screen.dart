import 'package:flutter/material.dart';
import 'package:simple_quiz/components/question_element.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }

  String localizeCallback(String key) {
    return key;
  }

  void onAnswerSelected(String answer) {
    // do nothing
    debugPrint('Answer selected: $answer');
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionElement(
              question: "question",
              answers: const ["answer 1", "answer 2"],
              onAnswerSelected: widget.onAnswerSelected,
              localizeCallback: widget.localizeCallback,
            )
          ],
        ),
      ),
    );
  }
}
