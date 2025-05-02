import 'package:flutter/material.dart';
import 'package:simple_quiz/l10n/generated/app_localizations.dart';
import 'package:simple_quiz/config.dart';

class UnderconstructionScreen extends StatelessWidget {
  final ScreenType screenName;

  const UnderconstructionScreen({super.key, required this.screenName});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 0, 0),
          ),
          const SizedBox(height: 80),
          Text(
            screenName.name,
            style: const TextStyle(fontSize: 20, color: Colors.red),
          ),
          const SizedBox(height: 10),
          Text(
            loc.app_under_construction,
            style: const TextStyle(fontSize: 20, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
