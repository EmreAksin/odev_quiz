import 'package:odev_quiz/model/question.dart';

class QuestionData {
  // içinde question nesnesi olacak bir liste oluşturuyoruz
  var questionList = <Question>[];

  QuestionData() {
    // nesneleri oluşturuyoruz
    var q1 = Question(
        question: "Soru bir",
        answers: ["cevap1", "cevap2", "cevap3", "cevap4"]);
    var q2 = Question(
        question: "Soru iki",
        answers: ["cevap1", "cevap2", "cevap3", "cevap4", "cevap5"]);
    var q3 = Question(
        question: "Soru üç", answers: ["cevap1", "cevap2", "cevap3", "cevap4"]);
    var q4 = Question(
        question: "Soru dört",
        answers: ["cevap1", "cevap2", "cevap3", "cevap4"]);

    // Oluşturduğumuz soru nesnelerini questionList listesine ekliyoruz.
    questionList.addAll([q1, q2, q3, q4]);
  }
}
