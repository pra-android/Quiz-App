import 'dart:math';

import 'package:get/get.dart';

class GKController extends GetxController {
  var indexvalue = 0.obs;
  var score = 0.obs;
  var correctanswerchecks = [].obs;
  var numberof_correctanswers = 0.obs;
  var numberof_incorrectanswers = 0.obs;

  //List of questions
  RxList listofquestions = [
    'Who is the father of Computer?',
    'Which is the nearest planet from the sun?',
    'What is the largest country in the world?',
    'Which planet is known as the "Red Planet"?',
    'What is the chemical symbol for gold?',
    'What is the largest organ in the human body?',
    'What is the capital city of Australia?',
    'Which animal is the largest mammal in the world?',
    'Which famous scientist developed the theory of evolution by natural selection?',
    'Who wrote the play "Hamlet"?',
  ].obs;

  List listofrandomnumbers = [];
  RxList listofrandomquestions = [].obs;
  RxList listofrandomanswers = [].obs;
  RxList listofrandomcorrectanswers = [].obs;
  RxList listofrandomcorrectanwersString = [].obs;

  void generaterandomnumbers() {
    Random random = Random();
    for (var i = 0; i < 5; i++) {
      var a = random.nextInt(10);
      if (!listofrandomnumbers.contains(a)) {
        listofrandomnumbers.add(a);
      } else if (listofrandomnumbers.contains(a)) {
        if (!listofrandomnumbers.contains(a + 1 % 2)) {
          listofrandomnumbers.add(a + 1);
        }
        if (!listofrandomnumbers.contains(a + 2 % 2)) {
          listofrandomnumbers.add(a + 2);
        }
      }
    }
    print(listofrandomnumbers);
    for (var i in listofrandomnumbers) {
      listofrandomquestions.add(listofquestions[i]);
      listofrandomanswers.add(optionslist[i]);
      print(listofrandomanswers);
      listofrandomcorrectanswers.add(correctanswers[i]);
    }
    print("List of Random Questions${listofrandomquestions}");
    print("List of Random Answeers${listofrandomanswers}");
    print("List of random correct answers${listofrandomcorrectanswers}");

    for (var j = 0; j < 5; j++) {
      for (var i in listofrandomcorrectanswers) {
        listofrandomcorrectanwersString.add(listofrandomanswers[j][i]);
        j++;
      }
    }

    print("${listofrandomcorrectanwersString}");
  }

  //List of answers
  RxList optionslist = [
    ['Charles Babbage', 'Herman Holerith', 'Steve Jobs', 'Tim Cook'],
    ['Mercury', 'Earth', 'Saturn', 'Neptune'],
    ['Vatican City', 'India', 'China', 'Russia'],
    ['Mercury', 'Venus', 'Mars', 'Saturn'],
    ['Au', 'Ag', 'Go', 'G'],
    ['Stomach', 'Skin', 'Leg', 'Ear'],
    ['Canbera', 'Sydney', 'Adelaide', 'Melbourne'],
    ['Elephant', 'Hippo-potamus', 'Blue Whale', 'Shark'],
    ['Charles Darwin', 'Lamark', 'Einstein', 'Newton'],
    [
      'Rabindra Nath Tagore',
      'Chetan Bhagat',
      'Adam Smith',
      'William Shakespear'
    ],
  ].obs;

  var correctanswers = [0, 0, 3, 2, 0, 1, 0, 2, 0, 3].obs;

  //Incrementing the questions and answers logic
  void incrementindex() {
    indexvalue.value = indexvalue.value + 1;
  }

  //Logic of checking answers
  void checkanswers() {
    if (correctanswerchecks[indexvalue.value - 1] ==
        listofrandomcorrectanswers[indexvalue.value - 1]) {
      score = score + 5;
      numberof_correctanswers = numberof_correctanswers + 1;
      print("Score:$score");
    }
  }
}
