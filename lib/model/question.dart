import '../utils/constants.dart';

class Question {
  Question({
    required this.question,
    required this.answer,
  });
  String? question;
  String? answer;
  Question.fromMap(Map map) {
    answer = map[Constants.answerKey];
    question = map[Constants.questionKey];
  }
  toMap() {
    return {
      Constants.answerKey: answer,
      Constants.questionKey: question,
    };
  }
}