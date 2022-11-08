import '../utils/constants.dart';

class Question {
  Question({
    required this.question,
    required this.answer,
  });
  String? question;
  String? answer;
  Question.fromMap(Map map) {
    answer = map[Constants.answer];
    question = map[Constants.question];
  }
  toMap() {
    return {
      Constants.answer: answer,
      Constants.question: question,
    };
  }
}