import 'package:get/get.dart';

class MusicController extends GetxController {
  var indexvalue = 0.obs;
  var score = 0.obs;
  var correctanswerchecks = [].obs;
  var numberof_correctanswers = 0.obs;
  var numberof_incorrectanswers = 0.obs;
  RxList answersinstring = [].obs;

  //List of questions
  RxList listofquestions = [
    'Which instrument does not belong to the brass family?',
    'Who is known as the "King of Pop"?',
    'Which of the following is not a woodwind instrument?',
    'Who is known for his iconic song "Purple Haze"?',
    'Which genre of music originated in Jamaica in the late 1960s?'
  ].obs;

  //List of answers
  RxList optionslist = [
    ['Trumpet', 'Trombone', 'Violin', 'French Horn'],
    ['Michael Jackson', 'Elvis Presley', 'Madonna', 'Prince'],
    ['Clarinet', 'Flute', 'Saxophone', 'Trumpet'],
    ['Jim Morrison', 'Jimi Hendrix', 'Bob Dylan', 'David Bowie'],
    ['Reggae', 'Salsa', 'Jazz', 'Blues']
  ].obs;

  var correctanswers = [2, 0, 3, 1, 0].obs;

  //Incrementing the questions and answers logic
  void incrementindex() {
    indexvalue.value = indexvalue.value + 1;
  }

  void viewanswers() {
    for (var j = 0; j < 5; j++) {
      for (var i in correctanswers) {
        answersinstring.add(optionslist[j][i]);
        j++;
      }
    }
  }

  //Logic of checking answers
  void checkanswers() {
    if (correctanswerchecks[indexvalue.value - 1] ==
        correctanswers[indexvalue.value - 1]) {
      score = score + 5;
      numberof_correctanswers = numberof_correctanswers + 1;
      print("Score:$score");
    }
  }
}
