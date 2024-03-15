import 'package:flutter/material.dart';
import 'package:odev_quiz/screens/homepage.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var sayi = 2;

  @override
  Widget build(BuildContext context) {
    if (sayi == 1) {
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
                    "Soru 1 overflow, and those that follow, will not be rendered. Otherwise, it will be shown with the given overflow option.",
                    style:
                        TextStyle(color: Colors.orange.shade700, fontSize: 24),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "a) Cevap 1",
                      style: TextStyle(
                          color: Colors.orange.shade700, fontSize: 18),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "a) Cevap 2",
                      style: TextStyle(
                          color: Colors.orange.shade700, fontSize: 18),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "a) Cevap 3",
                      style: TextStyle(
                          color: Colors.orange.shade700, fontSize: 18),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "a) Cevap 4",
                      style: TextStyle(
                          color: Colors.orange.shade700, fontSize: 18),
                    ),
                  ),
                ],
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
