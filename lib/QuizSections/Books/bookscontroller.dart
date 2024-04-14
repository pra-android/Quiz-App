import 'dart:math';

import 'package:get/get.dart';

class BookController extends GetxController {
  var indexvalue = 0.obs;
  var score = 0.obs;
  var correctanswerchecks = [].obs;
  var numberof_correctanswers = 0.obs;
  var numberof_incorrectanswers = 0.obs;

  //List of questions
  RxList listofquestions = [
    'Who is the author of "To Kill a Mockingbird"?',
    'What is the name of the protagonist in "The Great Gatsby?',
    'Who is the author of the "Hunger Games" trilogy?',
    'What color is Little Red Riding Hood\'s hood?',
    'The Very Hungry Caterpillar," what does the caterpillar turn into?',
    'What is the title of the first book in the "Magic Tree House" series?',
    'What fairy tale features a girl named Cinderella?',
    'What animal is the main character in "Charlotte\'s Web"?',
    'Who wrote "Green Eggs and Ham?',
    'What is the name of the boy who visits a chocolate factory in a Roald Dahl book?'
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
  RxList optionslist = [
    ['Harper Lee', 'Rabindra Nath Tagore', 'Adam Smith', 'William Shakespear'],
    ['Harry Gatsby', 'Neuro Gatsby', 'Jay Gatsby', 'plato Gatsby'],
    ['Jane Austin', 'Suzzane Collins', 'Jk Rowling', 'William Row'],
    ['Red', 'Green', 'Blue', 'Yellow'],
    ['Butterfly', 'Onion', 'Frog', 'Lizard'],
    [
      'Light Before Dark',
      'Frog Before Dark',
      'Hen Before Dark',
      'Dinosaurs Before Dark'
    ],
    ['Cindrella', 'Jungle Book', 'Barbie', 'Snow Leopard'],
    ['Frog', 'Hippo-potamus', 'Blue Whale', 'Pig'],
    ['Dr Seuss', 'Dr Lamark', 'Dr Guess', ' Dr Adam Smith'],
    [
      'Charlie Chaplin',
      'Chetan Bhagat',
      'Charlie Bucket',
      'William Shakespear'
    ],
  ].obs;

  var correctanswers = [0, 2, 1, 0, 0, 3, 0, 3, 0, 2].obs;

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
