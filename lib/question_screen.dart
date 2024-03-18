import 'package:flutter/material.dart';
import 'package:simple_quiz/components/question_element.dart';
import 'package:simple_quiz/config.dart';
import 'package:simple_quiz/models/quiz_question.dart';

import 'data/questions.dart';

class QuestionScreen extends StatefulWidget {
  final Callback<String> onSelectAnswer;

  const QuestionScreen({super.key, required this.onSelectAnswer});

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
      //currentIndex = (currentIndex + 1) % questionCount;
      currentIndex++;
    });
  }

  void answerQuestion(String answer) {
    debugPrint('answerQuestion: $answer');
    widget.onSelectAnswer(answer);
    nextQuestion();
    /*
    if (answer == currentQuestion.answers[currentQuestion.correctAnswer]) {
      debugPrint('Correct answer!');
      nextQuestion();
    } else {
      debugPrint('Wrong answer!');
    }
    */
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          QuestionElement(
            question: currentQuestion.question,
            //answers: currentQuestion.answers,
            answers: currentQuestion.shuffledAnswers,
            onAnswerSelected: answerQuestion,
          )
        ],
      ),
    );
  }
}
