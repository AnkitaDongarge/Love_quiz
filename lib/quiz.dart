import 'package:anku/questions.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

int index = 0;
int score = 0;

class _QuizState extends State<Quiz> {
  change() {
    if (index < QuestionBank.length) {
      setState(() {
        index++;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'lets have a quiz!!!',
          style: TextStyle(fontSize: 25, color: Colors.pinkAccent),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        color: Colors.white54,
        width: double.infinity,
        child: Column(children: [
          if (index < QuestionBank.length) ...[
            Text(
              '${QuestionBank[index].QuestionT}',
              style: const TextStyle(fontSize: 20,
              color: Colors.black),

            ),
            // Text('h'),
            const SizedBox(height: 40),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    elevation: 4,
                    side: const BorderSide(width: 2, color: Colors.brown),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  score = score + QuestionBank[index].Score1;
                  change();
                },
                child: Text(
                  '${QuestionBank[index].option1}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 15),
                )),
            const SizedBox(height: 30),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    elevation: 25,
                    side: const BorderSide(width: 2, color: Colors.brown),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  score = score + QuestionBank[index].Score2;
                  change();
                },
                child: Text(
                  '${QuestionBank[index].option2}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 15),
                )),
            const SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    elevation: 50,
                    side: const BorderSide(width: 2, color: Colors.brown),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  score = score + QuestionBank[index].Score3;
                  change();
                },
                child: Text(
                  '${QuestionBank[index].option3}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 15),
                )),
          ] else ...[
            Result(),

          ]
        ]),
      ),
    ));
  }
}
