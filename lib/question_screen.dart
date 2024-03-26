import 'package:flutter/material.dart';
import 'package:simple_quiz/components/question_element.dart';
import 'package:simple_quiz/config.dart';
import 'package:simple_quiz/models/quiz_question.dart';

import 'package:simple_quiz/data/questions.dart';

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

  int get questionCount => Questions.data.length;
  QuizQuestion get currentQuestion => Questions.data[currentIndex];
  int get correctAnswers => Questions.data[currentIndex].correctAnswer;

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
            questionId: "Q${currentIndex + 1}",
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
