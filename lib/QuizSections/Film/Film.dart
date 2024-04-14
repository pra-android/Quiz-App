import 'package:QuizApp/QuizSections/Film/film_firstpart.dart';
import 'package:QuizApp/QuizSections/Film/filmcontroller.dart';
import 'package:QuizApp/common/viewAnswers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../HomeScreen/HomeScreen.dart';
import '../../Utils/CustomAppBar.dart';
import '../../common/results.dart';

class Film extends StatefulWidget {
  Film({super.key});

  @override
  State<Film> createState() => _FilmState();
}

class _FilmState extends State<Film> {
  final filmcontroller = Get.put(FilmController());
  @override
  void initState() {
    super.initState();
    filmcontroller.indexvalue.value = 0;
    filmcontroller.generaterandomnumbers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(titles: "Film / Movies"),
        body: Obx(() => filmcontroller.listofrandomquestions.length >
                filmcontroller.indexvalue.value
            ? FilmFirstPart()
            : Result(
                onclickingresultsbutton: () {
                  Get.to(() => ViewAnswers(
                      totoalnumberofquestions:
                          filmcontroller.listofrandomquestions.length,
                      questions: filmcontroller.listofrandomquestions,
                      answers: filmcontroller.listofrandomcorrectanwersString));
                },
                onpresshome: () {
                  Get.off(() => HomeScreen());
                },
                totalquestions: filmcontroller.listofrandomquestions.length,
                score: filmcontroller.score.value,
                correctanswers: filmcontroller.numberof_correctanswers.value,
                incorrectanswers: filmcontroller.listofrandomquestions.length -
                    filmcontroller.numberof_correctanswers.value,
              )));
  }
}
