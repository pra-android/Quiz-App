import 'package:QuizApp/common/viewAnswers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuizApp/HomeScreen/HomeScreen.dart';
import 'package:QuizApp/QuizSections/GeneralKnowledge/GkController.dart';
import 'package:QuizApp/QuizSections/GeneralKnowledge/gk_firstpart.dart';

import 'package:QuizApp/common/results.dart';
import '../../Utils/CustomAppBar.dart';

class GeneralKnowledge extends StatefulWidget {
  GeneralKnowledge({super.key});

  @override
  State<GeneralKnowledge> createState() => _GeneralKnowledgeState();
}

class _GeneralKnowledgeState extends State<GeneralKnowledge> {
  GKController gkcontroller = Get.put(GKController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gkcontroller.indexvalue.value = 0;
    gkcontroller.generaterandomnumbers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          titles: "General Knowledge",
          color: Colors.deepPurple,
        ),
        body: Obx(() => gkcontroller.listofrandomquestions.length >
                gkcontroller.indexvalue.value
            ? GkFirstPart()
            : Result(
                onclickingresultsbutton: () {
                  Get.to(() => ViewAnswers(
                      totoalnumberofquestions:
                          gkcontroller.listofrandomquestions.length,
                      questions: gkcontroller.listofrandomquestions,
                      answers: gkcontroller.listofrandomcorrectanwersString));
                },
                onpresshome: () {
                  Get.off(() => HomeScreen());
                },
                totalquestions: gkcontroller.listofrandomquestions.length,
                score: gkcontroller.score.value,
                correctanswers: gkcontroller.numberof_correctanswers.value,
                incorrectanswers: gkcontroller.listofrandomquestions.length -
                    gkcontroller.numberof_correctanswers.value,
              )));
  }
}
