import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Utils {
  static String _getLanguageCode(BuildContext context) {
    // get language code from current locale
    Locale locale = Localizations.localeOf(context);
    return locale.languageCode;
  }

  static TextStyle getQuestionTextStyle(
    BuildContext context, {
    double fontSize = 24,
    Color fontColor = Colors.white,
  }) {
    String languageCode = _getLanguageCode(context);

    if (languageCode == 'vi') {
      return GoogleFonts.lato(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: fontColor,
      );
    }

    return GoogleFonts.lato(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: fontColor,
    );
  }

  static TextStyle getAnswerTextStyle(
    BuildContext context, {
    double fontSize = 20,
    Color fontColor = Colors.white,
  }) {
    String languageCode = _getLanguageCode(context);

    if (languageCode == 'vi') {
      return GoogleFonts.metal(
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
        color: fontColor,
      );
    }

    return GoogleFonts.metal(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: fontColor,
    );
  }

  static TextStyle getSummaryTextStyle(
    BuildContext context, {
    double fontSize = 20,
    Color fontColor = Colors.white,
  }) {
    String languageCode = _getLanguageCode(context);

    if (languageCode == 'vi') {
      return GoogleFonts.odibeeSans(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: fontColor,
      );
    }

    return GoogleFonts.odibeeSans(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: fontColor,
    );
  }
}
