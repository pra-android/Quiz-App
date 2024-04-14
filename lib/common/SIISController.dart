import 'package:get/get.dart';

class SIISController extends GetxController {
  var indexvalue = 0.obs;
  var score = 0.obs;
  var correctanswerchecks = [].obs;
  var numberof_correctanswers = 0.obs;
  var numberof_incorrectanswers = 0.obs;
  RxList answersinstring = [].obs;

  RxList sportslistofquestions = [
    'Who is often referred to as "The King" in tennis?',
    'In which sport does a player score by throwing a ball through a hoop?',
    'Which country has won the FIFA World Cup the most times?',
    'Which sport is associated with the term "birdie"?',
    'In which sport would you find a "try" being scored?'
  ].obs;

  RxList itlistofquestions = [
    "What does HTML stand for?",
    "Which programming language is commonly used for building Android apps?",
    "What does VPN stand for?",
    "Which of the following is NOT a relational database management system (RDBMS)?",
    "What is the purpose of an IP address?"
  ].obs;

  RxList intllistofquestions = [
    'Which international organization is responsible for maintaining peace and security among nations?',
    'What is the capital city of Canada?',
    'Which country is known as the "Land of the Rising Sun"?',
    'Which country is the largest by land area?',
    'The European Union (EU) was originally established to promote what?'
  ].obs;

  var sciencelistofquestions = [
    'What is the process by which liquid water becomes water vapor called?',
    'What is the chemical symbol for gold?',
    'Which scientist is known for his theory of relativity?',
    'What is the main function of the nucleus in a cell?'
  ].obs;

  //List of answers
  RxList scienceanswerslist = [
    ['Condensation', 'Evaporation', 'Sublimation', 'Melting'],
    ['Au', 'Fe', 'Cu', 'Ag'],
    [' Charles Darwin', 'Galileo Galilei', 'Newton', 'Albert Einstein'],
    [
      'Energy production',
      'Protein synthesis',
      'Genetic information storage',
      'Waste elimination'
    ]
  ].obs;

  RxList intlanswerslist = [
    ['UNESCO', 'IMF', 'WHO', 'United Nations'],
    ['Ottawa', 'Toronto', 'Canberra', 'Omono'],
    ['China', 'Japan', 'Thailand', 'South Korea'],
    ['China', 'Russia', 'Canada', 'United Nations'],
    [
      'Military cooperation',
      'Economic cooperation and integration',
      'Cultural exchange',
      'Humanitarian aid'
    ]
  ].obs;

  RxList itanswerslist = [
    [
      " Hyper Text Markup Language",
      " Hyperlinks and Text Markup Language",
      " Home Tool Markup Language",
      "Hyperlinking Textual Markup Language"
    ],
    ["Python", "Swift", "Java", "C++"],
    [
      "Virtual Personal Network",
      "Virtual Private Network",
      "Very Personal Network",
      "Verified Private Network"
    ],
    ["MySQL", "Oracle", "MongoDB", "PostgressSQL"],
    [
      'To identify a website ',
      'To identify a computer or device on a network',
      'To identify a user on the internet',
      'To secure network connections'
    ]
  ].obs;
  RxList sportsoptionslist = [
    ['Rafael Nadal', 'Roger Federer', 'Novak Djokovic', 'Andy Murray'],
    ['Soccer', 'Basketball', 'Rugby', 'Cricket'],
    ['Brazil', 'Germany', 'Argentina', 'Italy'],
    ['Golf', 'Tennis', 'Badminton', 'Cricket'],
    ['Rugby', 'Ice Hockey', 'Table Tennis', 'Swimming']
  ].obs;

  var sportscorrectanswers = [1, 1, 0, 0, 0].obs;
  var itcorrectanswers = [0, 2, 1, 2, 1].obs;
  var intlcorrectanswers = [3, 0, 1, 1, 1].obs;
  var sciencecorrectanswers = [1, 0, 3, 2].obs;

  void checksciencenanswers() {
    if (correctanswerchecks[indexvalue.value - 1] ==
        sciencecorrectanswers[indexvalue.value - 1]) {
      score = score + 5;
      numberof_correctanswers = numberof_correctanswers + 1;
      print("Score:$score");
    }
  }

  void checkitnanswers() {
    if (correctanswerchecks[indexvalue.value - 1] ==
        itcorrectanswers[indexvalue.value - 1]) {
      score = score + 5;
      numberof_correctanswers = numberof_correctanswers + 1;
      print("Score:$score");
    }
  }

  void checkeintlanswers() {
    if (correctanswerchecks[indexvalue.value - 1] ==
        intlcorrectanswers[indexvalue.value - 1]) {
      score = score + 5;
      numberof_correctanswers = numberof_correctanswers + 1;
      print("Score:$score");
    }
  }

  void checksportsanswers() {
    if (correctanswerchecks[indexvalue.value - 1] ==
        sportscorrectanswers[indexvalue.value - 1]) {
      score = score + 5;
      numberof_correctanswers = numberof_correctanswers + 1;
      print("Score:$score");
    }
  }

  void viewanswersofsports() {
    for (var j = 0; j < 5; j++) {
      for (var i in sportscorrectanswers) {
        answersinstring.add(sportsoptionslist[j][i]);
        j++;
      }
    }
  }

  void viewanswersofit() {
    for (var j = 0; j < 5; j++) {
      for (var i in itcorrectanswers) {
        answersinstring.add(itanswerslist[j][i]);
        j++;
      }
    }
  }

  void viewanswersofinternational() {
    for (var j = 0; j < 5; j++) {
      for (var i in intlcorrectanswers) {
        answersinstring.add(intlanswerslist[j][i]);
        j++;
      }
    }
  }

  void viewanswersofscience() {
    for (var j = 0; j < 4; j++) {
      for (var i in sciencecorrectanswers) {
        answersinstring.add(scienceanswerslist[j][i]);
        j++;
      }
    }
  }

  void incrementindex() {
    indexvalue.value = indexvalue.value + 1;
  }
}
