import 'package:QuizApp/Utils/CustomAppBar.dart';
import 'package:flutter/material.dart';

class ViewAnswers extends StatelessWidget {
  int totoalnumberofquestions;
  List<dynamic> questions = [];
  List<dynamic> answers = [];
  ViewAnswers(
      {super.key,
      required this.totoalnumberofquestions,
      required this.questions,
      required this.answers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        titles: "Answers",
        color: Colors.deepPurple,
      ),
      body: ListView.builder(
          itemCount: totoalnumberofquestions,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.grey.shade100,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(questions[index].toString()),
                      Text(answers[index].toString())
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
