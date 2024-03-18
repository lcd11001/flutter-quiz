import 'package:flutter/material.dart';

// run 'flutter gen-l10n' to generate the AppLocalizations class
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:simple_quiz/config.dart';
import 'package:simple_quiz/data/questions.dart';
import 'package:simple_quiz/question_screen.dart';
import 'package:simple_quiz/splash_screen.dart';
import 'package:simple_quiz/underconstruction_screen.dart';

class QuizApp extends StatefulWidget {
  final String defaultLanguage;

  const QuizApp({super.key, this.defaultLanguage = 'en'});

  @override
  State<QuizApp> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  late ScreenType? activeScreen;
  final List<String> selectedAnswers = [];

  @override
  void initState() {
    super.initState();

    activeScreen = ScreenType.splashScreen;
  }

  void setScreenState(ScreenType nextScreen) {
    setState(() {
      activeScreen = nextScreen;
    });
  }

  Widget getActiveScreen(ScreenType screenType) {
    debugPrint('Active Screen: $screenType');
    switch (screenType) {
      case ScreenType.splashScreen:
        return SplashScreen(onNextScreen: setScreenState);

      case ScreenType.questionScreen:
        return QuestionScreen(onSelectAnswer: chooseAnswer);

      default:
        return UnderconstructionScreen(screenName: screenType);
    }
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    debugPrint('chooseAnswer: $selectedAnswers');

    if (selectedAnswers.length == questions.length) {
      selectedAnswers.clear();
      setScreenState(ScreenType.splashScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale(widget.defaultLanguage), // force to use Vietnamese
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple.shade900,
                Colors.deepPurple.shade900,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: getActiveScreen(activeScreen!),
        ),
      ),
    );
  }
}
