import 'package:flutter/material.dart';

import 'package:simple_quiz/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: const SplashScreen(),
        ),
      ),
    ),
  );
}
