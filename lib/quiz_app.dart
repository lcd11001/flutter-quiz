import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// run 'flutter gen-l10n' to generate the AppLocalizations class
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:simple_quiz/config.dart';
import 'package:simple_quiz/question_screen.dart';
import 'package:simple_quiz/splash_screen.dart';
import 'package:simple_quiz/underconstruction_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  ScreenType? activeScreen;

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
        return const QuestionScreen();
      default:
        return UnderconstructionScreen(screenName: screenType);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //locale: const Locale('vi'), // force to use Vietnamese
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
