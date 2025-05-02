import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// The conventional newborn programmer greeting
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @app_title.
  ///
  /// In en, this message translates to:
  /// **'Simple Quiz'**
  String get app_title;

  /// No description provided for @btn_start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get btn_start;

  /// No description provided for @app_under_construction.
  ///
  /// In en, this message translates to:
  /// **'Under Construction!'**
  String get app_under_construction;

  /// Summary of the quiz results
  ///
  /// In en, this message translates to:
  /// **'You have answered {correctAnswers} out of {totalQuestions} questions correctly!'**
  String summary(int correctAnswers, int totalQuestions);

  /// No description provided for @btn_reset.
  ///
  /// In en, this message translates to:
  /// **'Reset Quiz'**
  String get btn_reset;

  /// The question number
  ///
  /// In en, this message translates to:
  /// **'Question {id}'**
  String txt_question(String id);

  /// The correct answer to the question
  ///
  /// In en, this message translates to:
  /// **'Correct Answer: {answer}'**
  String txt_correct_answer(String answer);

  /// The user's answer to the question
  ///
  /// In en, this message translates to:
  /// **'Your Answer: {answer}'**
  String txt_user_answer(String answer);

  /// No description provided for @question1.
  ///
  /// In en, this message translates to:
  /// **'What are the main building blocks of Flutter UIs?'**
  String get question1;

  /// No description provided for @answer1_1.
  ///
  /// In en, this message translates to:
  /// **'Widgets'**
  String get answer1_1;

  /// No description provided for @answer1_2.
  ///
  /// In en, this message translates to:
  /// **'Components'**
  String get answer1_2;

  /// No description provided for @answer1_3.
  ///
  /// In en, this message translates to:
  /// **'Blocks'**
  String get answer1_3;

  /// No description provided for @answer1_4.
  ///
  /// In en, this message translates to:
  /// **'Functions'**
  String get answer1_4;

  /// No description provided for @question2.
  ///
  /// In en, this message translates to:
  /// **'How are Flutter UIs built?'**
  String get question2;

  /// No description provided for @answer2_1.
  ///
  /// In en, this message translates to:
  /// **'By combining widgets in code'**
  String get answer2_1;

  /// No description provided for @answer2_2.
  ///
  /// In en, this message translates to:
  /// **'By combining widgets in a visual editor'**
  String get answer2_2;

  /// No description provided for @answer2_3.
  ///
  /// In en, this message translates to:
  /// **'By defining widgets in config files'**
  String get answer2_3;

  /// No description provided for @answer2_4.
  ///
  /// In en, this message translates to:
  /// **'By using XCode for iOS and Android Studio for Android'**
  String get answer2_4;

  /// No description provided for @question3.
  ///
  /// In en, this message translates to:
  /// **'What\'s the purpose of a StatefulWidget?'**
  String get question3;

  /// No description provided for @answer3_1.
  ///
  /// In en, this message translates to:
  /// **'Update UI as data changes'**
  String get answer3_1;

  /// No description provided for @answer3_2.
  ///
  /// In en, this message translates to:
  /// **'Update data as UI changes'**
  String get answer3_2;

  /// No description provided for @answer3_3.
  ///
  /// In en, this message translates to:
  /// **'Ignore data changes'**
  String get answer3_3;

  /// No description provided for @answer3_4.
  ///
  /// In en, this message translates to:
  /// **'Render UI that does not depend on data'**
  String get answer3_4;

  /// No description provided for @question4.
  ///
  /// In en, this message translates to:
  /// **'Which widget should you try to use more often: StatelessWidget or StatefulWidget?'**
  String get question4;

  /// No description provided for @answer4_1.
  ///
  /// In en, this message translates to:
  /// **'StatelessWidget'**
  String get answer4_1;

  /// No description provided for @answer4_2.
  ///
  /// In en, this message translates to:
  /// **'StatefulWidget'**
  String get answer4_2;

  /// No description provided for @answer4_3.
  ///
  /// In en, this message translates to:
  /// **'Both are equally good'**
  String get answer4_3;

  /// No description provided for @answer4_4.
  ///
  /// In en, this message translates to:
  /// **'None of the above'**
  String get answer4_4;

  /// No description provided for @question5.
  ///
  /// In en, this message translates to:
  /// **'What happens if you change data in a StatelessWidget?'**
  String get question5;

  /// No description provided for @answer5_1.
  ///
  /// In en, this message translates to:
  /// **'The UI is not updated'**
  String get answer5_1;

  /// No description provided for @answer5_2.
  ///
  /// In en, this message translates to:
  /// **'The UI is updated'**
  String get answer5_2;

  /// No description provided for @answer5_3.
  ///
  /// In en, this message translates to:
  /// **'The closest StatefulWidget is updated'**
  String get answer5_3;

  /// No description provided for @answer5_4.
  ///
  /// In en, this message translates to:
  /// **'Any nested StatefulWidgets are updated'**
  String get answer5_4;

  /// No description provided for @question6.
  ///
  /// In en, this message translates to:
  /// **'How should you update data inside of StatefulWidgets?'**
  String get question6;

  /// No description provided for @answer6_1.
  ///
  /// In en, this message translates to:
  /// **'By calling setState()'**
  String get answer6_1;

  /// No description provided for @answer6_2.
  ///
  /// In en, this message translates to:
  /// **'By calling updateData()'**
  String get answer6_2;

  /// No description provided for @answer6_3.
  ///
  /// In en, this message translates to:
  /// **'By calling updateUI()'**
  String get answer6_3;

  /// No description provided for @answer6_4.
  ///
  /// In en, this message translates to:
  /// **'By calling updateState()'**
  String get answer6_4;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
