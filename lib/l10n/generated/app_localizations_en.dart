// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get app_title => 'Simple Quiz';

  @override
  String get btn_start => 'Start';

  @override
  String get app_under_construction => 'Under Construction!';

  @override
  String summary(int correctAnswers, int totalQuestions) {
    return 'You have answered $correctAnswers out of $totalQuestions questions correctly!';
  }

  @override
  String get btn_reset => 'Reset Quiz';

  @override
  String txt_question(String id) {
    return 'Question $id';
  }

  @override
  String txt_correct_answer(String answer) {
    return 'Correct Answer: $answer';
  }

  @override
  String txt_user_answer(String answer) {
    return 'Your Answer: $answer';
  }

  @override
  String get question1 => 'What are the main building blocks of Flutter UIs?';

  @override
  String get answer1_1 => 'Widgets';

  @override
  String get answer1_2 => 'Components';

  @override
  String get answer1_3 => 'Blocks';

  @override
  String get answer1_4 => 'Functions';

  @override
  String get question2 => 'How are Flutter UIs built?';

  @override
  String get answer2_1 => 'By combining widgets in code';

  @override
  String get answer2_2 => 'By combining widgets in a visual editor';

  @override
  String get answer2_3 => 'By defining widgets in config files';

  @override
  String get answer2_4 => 'By using XCode for iOS and Android Studio for Android';

  @override
  String get question3 => 'What\'s the purpose of a StatefulWidget?';

  @override
  String get answer3_1 => 'Update UI as data changes';

  @override
  String get answer3_2 => 'Update data as UI changes';

  @override
  String get answer3_3 => 'Ignore data changes';

  @override
  String get answer3_4 => 'Render UI that does not depend on data';

  @override
  String get question4 => 'Which widget should you try to use more often: StatelessWidget or StatefulWidget?';

  @override
  String get answer4_1 => 'StatelessWidget';

  @override
  String get answer4_2 => 'StatefulWidget';

  @override
  String get answer4_3 => 'Both are equally good';

  @override
  String get answer4_4 => 'None of the above';

  @override
  String get question5 => 'What happens if you change data in a StatelessWidget?';

  @override
  String get answer5_1 => 'The UI is not updated';

  @override
  String get answer5_2 => 'The UI is updated';

  @override
  String get answer5_3 => 'The closest StatefulWidget is updated';

  @override
  String get answer5_4 => 'Any nested StatefulWidgets are updated';

  @override
  String get question6 => 'How should you update data inside of StatefulWidgets?';

  @override
  String get answer6_1 => 'By calling setState()';

  @override
  String get answer6_2 => 'By calling updateData()';

  @override
  String get answer6_3 => 'By calling updateUI()';

  @override
  String get answer6_4 => 'By calling updateState()';
}
