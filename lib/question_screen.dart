import 'package:flutter/material.dart';
import 'package:simple_quiz/components/question_element.dart';
import 'package:simple_quiz/models/quiz_question.dart';

import 'data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  late int currentIndex;

  int get questionCount => questions.length;
  QuizQuestion get currentQuestion => questions[currentIndex];
  int get correctAnswers => questions[currentIndex].correctAnswer;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void nextQuestion() {
    setState(() {
      currentIndex = (currentIndex + 1) % questionCount;
    });
  }

  void onAnswerSelected(String answer) {
    debugPrint('Answer selected: $answer');
    if (answer == currentQuestion.answers[currentQuestion.correctAnswer]) {
      debugPrint('Correct answer!');
      nextQuestion();
    } else {
      debugPrint('Wrong answer!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            QuestionElement(
              question: currentQuestion.question,
              //answers: currentQuestion.answers,
              answers: currentQuestion.shuffledAnswers,
              onAnswerSelected: onAnswerSelected,
            )
          ],
        ),
      ),
    );
  }
}
