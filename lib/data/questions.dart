import 'package:simple_quiz/models/quiz_question.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Questions {
  static List<QuizQuestion> data = List<QuizQuestion>.empty(growable: true);

  static List<QuizQuestion> init(AppLocalizations loc) {
    if (data.isEmpty) {
      data = _getQuestions(loc);
    }
    return data;
  }

  // get List<QuizQuestion> questions base on the current language
  static List<QuizQuestion> _getQuestions(AppLocalizations loc) {
    return [
      QuizQuestion(
        question: loc.question1,
        answers: [
          loc.answer1_1,
          loc.answer1_2,
          loc.answer1_3,
          loc.answer1_4,
        ],
        correctAnswer: 0,
      ),
      QuizQuestion(
        question: loc.question2,
        answers: [
          loc.answer2_1,
          loc.answer2_2,
          loc.answer2_3,
          loc.answer2_4,
        ],
        correctAnswer: 0,
      ),
      QuizQuestion(
        question: loc.question3,
        answers: [
          loc.answer3_1,
          loc.answer3_2,
          loc.answer3_3,
          loc.answer3_4,
        ],
        correctAnswer: 0,
      ),
      QuizQuestion(
        question: loc.question4,
        answers: [
          loc.answer4_1,
          loc.answer4_2,
          loc.answer4_3,
          loc.answer4_4,
        ],
        correctAnswer: 0,
      ),
      QuizQuestion(
        question: loc.question5,
        answers: [
          loc.answer5_1,
          loc.answer5_2,
          loc.answer5_3,
          loc.answer5_4,
        ],
        correctAnswer: 0,
      ),
      QuizQuestion(
        question: loc.question6,
        answers: [
          loc.answer6_1,
          loc.answer6_2,
          loc.answer6_3,
          loc.answer6_4,
        ],
        correctAnswer: 0,
      ),
    ];
  }
}
