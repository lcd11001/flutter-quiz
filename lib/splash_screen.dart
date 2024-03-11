import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 80),
          const Text(
            "Simple Quiz",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {
              debugPrint('Button Pressed');
            },
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(200, 50),
              foregroundColor: Colors.white,
              side: const BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
