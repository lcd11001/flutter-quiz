import 'package:flutter/material.dart';
import 'package:simple_quiz/config.dart';
import 'package:simple_quiz/question_screen.dart';
import 'package:simple_quiz/splash_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();

    activeScreen = SplashScreen(onNextScreen: changeScreen);
  }

  void changeScreen(ScreenType nextScreen) {
    setState(() {
      switch (nextScreen) {
        case ScreenType.splashScreen:
          activeScreen = SplashScreen(onNextScreen: changeScreen);
          break;
        case ScreenType.questionScreen:
          activeScreen = const QuestionScreen();
          break;

        default:
          activeScreen = SplashScreen(onNextScreen: changeScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          child: activeScreen,
        ),
      ),
    );
  }
}
