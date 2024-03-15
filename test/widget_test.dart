// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_quiz/quiz_app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// https://stackoverflow.com/questions/52463714/how-to-test-localized-widgets-in-flutter/73248298#73248298
Future<AppLocalizations> getLocalizations(WidgetTester t,
    {String defaultLanguage = 'en'}) async {
  late AppLocalizations result;
  await t.pumpWidget(
    MaterialApp(
      locale: Locale(defaultLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Material(
        child: Builder(
          builder: (BuildContext context) {
            result = AppLocalizations.of(context)!;
            return Container();
          },
        ),
      ),
    ),
  );
  return result;
}

void main() {
  testWidgets('Splash screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await getLocalizations(tester).then((localizations) async {
      await tester.pumpWidget(const QuizApp());
      expect(find.text(localizations.app_title), findsOne);
    });
  });
}
