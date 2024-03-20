import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:simple_quiz/quiz_app.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(
    const QuizApp(
      defaultLanguage: 'vi',
    ),
  );
}
