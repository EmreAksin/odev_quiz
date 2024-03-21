import 'package:odev_quiz/model/question.dart';

class QuestionData {
  var questionList = <Question>[];

  QuestionData() {
    var q1 = Question(
      question:
          "Dart dilinde değişken tanımlamak için kullanılan anahtar kelime nedir?",
      answers: ["var", "int", "final", "String"],
      correctAnswerIndex: 0,
    );
    var q2 = Question(
      question:
          "Dart dilinde hangi operatör kullanılarak eşitlik kontrolü yapılır?",
      answers: ["==", "=", "===", "!="],
      correctAnswerIndex: 0,
    );
    var q3 = Question(
      question:
          "Dart dilinde hangi veri tipi birden fazla değeri içeren bir liste oluşturur?",
      answers: ["Map", "Set", "List", "Array"],
      correctAnswerIndex: 2,
    );
    var q4 = Question(
      question:
          "Dart dilinde hangi anahtar kelimeyi kullanarak bir fonksiyon tanımlanır?",
      answers: ["function", "def", "void", "fun"],
      correctAnswerIndex: 2,
    );

    questionList.addAll([q1, q2, q3, q4]);
  }
}
