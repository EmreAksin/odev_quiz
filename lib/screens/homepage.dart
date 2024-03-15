import 'package:flutter/material.dart';
import 'package:odev_quiz/screens/quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: const Text(
          "Soru-Cevap",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Hoşgeldiniz",
              style: TextStyle(color: Colors.orange.shade700, fontSize: 30),
            ),
            Text(
              "Hadi bilginizi test edelim",
              style: TextStyle(color: Colors.orange.shade700, fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizPage(),
                  ),
                );
              },
              child: Text(
                "Başla",
                style: TextStyle(color: Colors.orange.shade700, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
