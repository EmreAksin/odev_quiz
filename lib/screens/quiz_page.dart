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
  var sayi = 2;

  // Soruları ve cevapları QuestionDatadan çekiyoruz
  final QuestionData questionsData = QuestionData();

  // Listeden çekekeceğimiz sorunun dizesini takip etmek için değişken oluşturuyoruz
  int questionCount = 0;

  // soruyu ilerletmek için bir state fonksiyonu yazıyoruz
  void _nextQuestion() {
    setState(() {
      // değişken değeri arttıkça soru değişecek
      questionCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (questionCount < questionsData.questionList.length - 1) {
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
                  Text(
                    currentQuestion.question,
                    style:
                        TextStyle(color: Colors.orange.shade700, fontSize: 24),
                  ),
                ],
              ),
              Column(
                children: currentQuestion.answers.map((answer) {
                  return ElevatedButton(
                    onPressed: _nextQuestion,
                    child: Text(
                      answer,
                      style: TextStyle(
                          color: Colors.orange.shade700, fontSize: 18),
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  "Sorular bitti anasayfaya dön",
                  style: TextStyle(color: Colors.orange.shade700, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ); // Else durumu için bir widget döndürüldü
    }
  }
}
