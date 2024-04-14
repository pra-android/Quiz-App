import 'dart:math';

import 'package:get/get.dart';

class FilmController extends GetxController {
  var indexvalue = 0.obs;
  var score = 0.obs;
  var correctanswerchecks = [].obs;
  var numberof_correctanswers = 0.obs;
  var numberof_incorrectanswers = 0.obs;

  //List of questions
  RxList listofquestions = [
    'Who directed the movie "Inception"?',
    'In which film did Leonardo DiCaprio win his first Academy Award for Best Actor?',
    'Who composed the iconic soundtrack for "The Lion King"?',
    'Which film won the Academy Award for Best Picture in 2020?',
    'Who directed the 1994 film "Pulp Fiction"?',
    'Who portrayed the character of Tony Stark/Iron Man?',
    'Which actor has won Oscar awards as a Best actor in 2024?'
  ].obs;
  RxList optionslist = [
    ['Jk Rowling', 'Quentin Tarantino', 'Christopher Nolan', 'James Cameron'],
    ['Titanic', 'The Revenant', 'The Beach', 'Shutter Island'],
    ['Hans Zimmer', 'James Polly', 'Akon', 'Henry Fayol'],
    ['Parasite', 'The Revenant', 'The Beach', 'Killers Of The Flower Moon'],
    [
      'Quentin Tarantino',
      'Christopher Nolan',
      'James Cameron',
      'Marvel Studios'
    ],
    ['Tom Hanks', 'Johny Dep', 'Robert Downey Jr', 'Cilian Murphy'],
    ['Tom Hanks', 'Johny Dep', 'Robert Downey Jr', 'Cilian Murphy']
  ].obs;

  var correctanswers = [
    2,
    1,
    0,
    0,
    0,
    2,
    3,
  ].obs;
  List listofrandomnumbers = [];
  RxList listofrandomquestions = [].obs;
  RxList listofrandomanswers = [].obs;
  RxList listofrandomcorrectanswers = [].obs;
  RxList listofrandomcorrectanwersString = [].obs;

  void generaterandomnumbers() {
    Random random = Random();
    for (var i = 0; i < 5; i++) {
      var a = random.nextInt(listofquestions.length);
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

      print(listofrandomnumbers);
    }
    for (var i in listofrandomnumbers) {
      listofrandomquestions.add(listofquestions[i]);
      listofrandomanswers.add(optionslist[i]);
      listofrandomcorrectanswers.add(correctanswers[i]);
    }
    print(listofrandomquestions);
    for (var j = 0; j < 5; j++) {
      for (var i in listofrandomcorrectanswers) {
        listofrandomcorrectanwersString.add(listofrandomanswers[j][i]);
        j++;
      }
    }
  }

  //List of answers

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
