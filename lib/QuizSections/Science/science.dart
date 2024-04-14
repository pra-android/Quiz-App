import 'package:QuizApp/common/viewAnswers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuizApp/common/SIISController.dart';

import '../../Utils/CustomAppBar.dart';
import '../../common/FirstPart.dart';
import '../../common/results.dart';

class Science extends StatefulWidget {
  Science({super.key});

  @override
  State<Science> createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  final internationalcontroller = Get.put(SIISController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    internationalcontroller.indexvalue.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          titles: "Science",
          color: Colors.green,
        ),
        body: Obx(() => internationalcontroller.sciencelistofquestions.length >
                internationalcontroller.indexvalue.value
            ? FirstPart(
                colors: Colors.green,
                listofquestions: internationalcontroller.sciencelistofquestions,
                listofanswers: internationalcontroller.scienceanswerslist,
                indexvalue: internationalcontroller.indexvalue.value,
                functioncallonpressingbutton: () {
                  internationalcontroller.checksciencenanswers();
                })
            : Result(
                onclickingresultsbutton: () {
                  internationalcontroller.viewanswersofscience();
                  Get.to(() => ViewAnswers(
                      totoalnumberofquestions:
                          internationalcontroller.sciencelistofquestions.length,
                      questions: internationalcontroller.sciencelistofquestions,
                      answers: internationalcontroller.answersinstring));
                },
                onpresshome: () {
                  Get.back();
                },
                totalquestions:
                    internationalcontroller.sciencelistofquestions.length,
                score: internationalcontroller.score.value,
                correctanswers:
                    internationalcontroller.numberof_correctanswers.value,
                incorrectanswers:
                    internationalcontroller.sciencelistofquestions.length -
                        internationalcontroller.numberof_correctanswers.value,
              )));
  }
}
