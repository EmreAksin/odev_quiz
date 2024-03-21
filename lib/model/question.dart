class Question {
  // Sorularımızı oluşturmak için soru objesi oluşturyoruz
  late String question;
  late List<String> answers;
  late int correctAnswerIndex;

  Question(
      {required this.question,
      required this.answers,
      required this.correctAnswerIndex});
}
