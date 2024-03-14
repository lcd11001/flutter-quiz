import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:simple_quiz/config.dart';

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
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text(
            _.app_title,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              debugPrint('Button Pressed');
              onNextScreen(ScreenType.questionScreen);
            },
            style: OutlinedButton.styleFrom(
              //fixedSize: const Size(200, 50),
              foregroundColor: Colors.white,
              side: const BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
            icon: const Icon(Icons.play_arrow),
            label: Text(_.btn_start),
          ),
        ],
      ),
    );
  }
}
