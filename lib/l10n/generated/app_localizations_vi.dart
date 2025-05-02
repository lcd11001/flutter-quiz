// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get helloWorld => 'Xin chào';

  @override
  String get app_title => 'Ai Là Triệu Phú';

  @override
  String get btn_start => 'Bắt đầu';

  @override
  String get app_under_construction => 'Under Construction!';

  @override
  String summary(int correctAnswers, int totalQuestions) {
    return 'Bạn đã trả lời đúng $correctAnswers câu hỏi trong tổng số $totalQuestions câu hỏi!';
  }

  @override
  String get btn_reset => 'Chơi lại';

  @override
  String txt_question(String id) {
    return 'Câu hỏi $id';
  }

  @override
  String txt_correct_answer(String answer) {
    return 'Câu trả lời đúng: $answer';
  }

  @override
  String txt_user_answer(String answer) {
    return 'Câu trả lời của bạn: $answer';
  }

  @override
  String get question1 => 'Câu hỏi 1: Ai là người đầu tiên đặt chân lên Mặt Trăng?';

  @override
  String get answer1_1 => 'Neil Armstrong';

  @override
  String get answer1_2 => 'Buzz Aldrin';

  @override
  String get answer1_3 => 'Michael Collins';

  @override
  String get answer1_4 => 'Yuri Gagarin';

  @override
  String get question2 => 'Câu hỏi 2: Trong hệ mặt trời, hành tinh nào gần nhất với Mặt Trời?';

  @override
  String get answer2_1 => 'Mercury';

  @override
  String get answer2_2 => 'Venus';

  @override
  String get answer2_3 => 'Earth';

  @override
  String get answer2_4 => 'Mars';

  @override
  String get question3 => 'Câu hỏi 3: Ai là người sáng lập Microsoft?';

  @override
  String get answer3_1 => 'Bill Gates';

  @override
  String get answer3_2 => 'Steve Jobs';

  @override
  String get answer3_3 => 'Mark Zuckerberg';

  @override
  String get answer3_4 => 'Elon Musk';

  @override
  String get question4 => 'Câu hỏi 4: Trong lịch sử Việt Nam, ai là người đã đánh bại quân xâm lược Mông Cổ?';

  @override
  String get answer4_1 => 'Trần Hưng Đạo';

  @override
  String get answer4_2 => 'Lê Lợi';

  @override
  String get answer4_3 => 'Nguyễn Huệ';

  @override
  String get answer4_4 => 'Quang Trung';

  @override
  String get question5 => 'Câu hỏi 5: Ai là người phát minh ra đèn điện?';

  @override
  String get answer5_1 => 'Thomas Edison';

  @override
  String get answer5_2 => 'Nikola Tesla';

  @override
  String get answer5_3 => 'Alexander Graham Bell';

  @override
  String get answer5_4 => 'Albert Einstein';

  @override
  String get question6 => 'Câu hỏi 6: Trong hệ mặt trời, hành tinh nào có vòng tròn màu sắc xung quanh?';

  @override
  String get answer6_1 => 'Saturn';

  @override
  String get answer6_2 => 'Jupiter';

  @override
  String get answer6_3 => 'Uranus';

  @override
  String get answer6_4 => 'Neptune';
}
