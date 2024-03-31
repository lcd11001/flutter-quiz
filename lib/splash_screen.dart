import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:simple_quiz/config.dart';
import 'package:simple_quiz/data/questions.dart';
import 'package:simple_quiz/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  final Callback<ScreenType> onNextScreen;

  const SplashScreen({super.key, required this.onNextScreen});

  @override
  Widget build(BuildContext context) {
    final _ = AppLocalizations.of(context)!;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Semantics(
            label: "app logo",
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Colors.deepPurple.shade50,
            ),
          ),
          const SizedBox(height: 80),
          Text(
            _.app_title,
            style: Utils.getSummaryTextStyle(context, fontSize: 50),
          ),
          const SizedBox(height: 30),
          Semantics(
            label: "Start Quiz Button",
            child: OutlinedButton.icon(
              onPressed: () {
                debugPrint('Button Pressed');
                // load questions before change screen
                loadQuestions(_);
                onNextScreen(ScreenType.questionScreen);
              },
              style: OutlinedButton.styleFrom(
                //fixedSize: const Size(200, 50),
                foregroundColor: Colors.white,
                side: const BorderSide(
                  color: Colors.deepPurpleAccent,
                  width: 1,
                ),
              ),
              icon: const Icon(Icons.play_arrow),
              label: Text(
                _.btn_start,
                style: Utils.getQuestionTextStyle(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void loadQuestions(AppLocalizations loc) {
    Questions.init(loc);
  }
}
