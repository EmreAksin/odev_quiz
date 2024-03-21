import 'package:flutter/material.dart';
import 'package:odev_quiz/data/question_data.dart';
import 'package:odev_quiz/model/question.dart';
import 'package:odev_quiz/screens/homepage.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // Soruları ve cevapları QuestionDatadan çekiyoruz
  final QuestionData questionsData = QuestionData();

  // Listeden çekekeceğimiz sorunun dizesini takip etmek için değişken oluşturuyoruz
  int questionCount = 0;
  int currectAnswer = 0;
  int wrongAnswercount = 0;

  // soruyu ilerletmek için bir state fonksiyonu yazıyoruz
  void _nextQuestion() {
    setState(() {
      // değişken değeri arttıkça soru değişecek
      questionCount++;
    });
  }

  // Soru cevaplandığında doğru cevabı kontrol eden fonksiyon
  void _checkAnswer(int selectedAnswerIndex) {
    Question currentQuestion = questionsData.questionList[questionCount];
    if (selectedAnswerIndex == currentQuestion.correctAnswerIndex) {
      setState(() {
        // Doğru cevaplandığında doğru cevap sayısını arttır
        currectAnswer++;
      });
    } else {
      setState(() {
        // Yanlış cevaplandığında yanlış cevap sayısını arttır
        wrongAnswercount++;
      });
    }
    // Bir sonraki soruya geç
    _nextQuestion();
  }

  @override
  Widget build(BuildContext context) {
    if (questionCount < questionsData.questionList.length) {
      Question currentQuestion = questionsData.questionList[questionCount];
      return Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade700,
          title: Text("Soru-Cevap"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Text(
                      currentQuestion.question,
                      style: TextStyle(
                          color: Colors.orange.shade700, fontSize: 24),
                    ),
                  ),
                ],
              ),
              Column(
                children: currentQuestion.answers.map((answer) {
                  return ElevatedButton(
                    onPressed: () {
                      _checkAnswer(currentQuestion.answers.indexOf(answer));
                    },
                    child: Text(
                      answer,
                      style: TextStyle(
                          color: Colors.orange.shade700, fontSize: 24),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Doğru cevap sayısı : ${currectAnswer}",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              Text("Yanlış cevap sayısı : ${wrongAnswercount}",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  "Sorular bitti anasayfaya dön",
                  style: TextStyle(color: Colors.orange.shade700, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ); // Else durumu için bir widget döndürüldü
    }
  }
}
