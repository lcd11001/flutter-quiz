import 'package:flutter/material.dart';

// run 'flutter gen-l10n' to generate the AppLocalizations class
import 'package:simple_quiz/l10n/generated/app_localizations.dart';
import 'package:simple_quiz/components/app_version.dart';

import 'package:simple_quiz/config.dart';
import 'package:simple_quiz/data/questions.dart';
import 'package:simple_quiz/question_screen.dart';
import 'package:simple_quiz/result_screen.dart';
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

      case ScreenType.resultScreen:
        return ResultScreen(
          selectedAnswers: selectedAnswers,
          onResetQuiz: resetQuiz,
        );

      default:
        return UnderconstructionScreen(screenName: screenType);
    }
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    debugPrint('chooseAnswer: $selectedAnswers');

    if (selectedAnswers.length == Questions.data.length) {
      setScreenState(ScreenType.resultScreen);
    }
  }

  void resetQuiz() {
    selectedAnswers.clear();
    setScreenState(ScreenType.splashScreen);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale(widget.defaultLanguage), // force to use Vietnamese
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
      ),
      home: Scaffold(
        /*
        extendBodyBehindAppBar: false,
        backgroundColor: Colors.red,
        appBar: AppBar(
            backgroundColor: Colors.yellow,
            elevation: 0,
            title: FutureBuilder(
              future: getDelay(),
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return const Text("Loading...");
                }
                final _ = AppLocalizations.of(context);
                return Text(_?.app_title ?? "NULL TITLE");
              },
            )),
        */
        body: Container(
          // don't use SafeArea here,
          // because I want to full-fill the entire screen with gradient color
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple.shade900, Colors.deepPurple.shade900],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            // use SafeArea to avoid the top notch
            child: getActiveScreen(activeScreen!),
          ),
        ),
        bottomSheet: const AppVersion(),
      ),
    );
  }

  Future<bool> getDelay() async {
    await Future.delayed(const Duration(milliseconds: 100));
    // fix AppLocalizations.of(context) return null
    // delay a bit for the AppLocalizations to be loaded
    return true;
  }
}
