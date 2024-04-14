import 'package:QuizApp/common/viewAnswers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuizApp/Utils/CustomAppBar.dart';
import 'package:QuizApp/common/FirstPart.dart';
import 'package:QuizApp/common/SIISController.dart';

import '../../common/results.dart';

class Sports extends StatefulWidget {
  Sports({super.key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  final sportscontroller = Get.put(SIISController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sportscontroller.indexvalue.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          titles: "Sports",
          color: Colors.purple,
        ),
        body: Obx(() => sportscontroller.sportslistofquestions.length >
                sportscontroller.indexvalue.value
            ? FirstPart(
                colors: Colors.purple,
                listofquestions: sportscontroller.sportslistofquestions,
                listofanswers: sportscontroller.sportsoptionslist,
                indexvalue: sportscontroller.indexvalue.value,
                functioncallonpressingbutton: () {
                  sportscontroller.checksportsanswers();
                })
            : Result(
                onclickingresultsbutton: () {
                  sportscontroller.viewanswersofsports();
                  Get.to(() => ViewAnswers(
                      totoalnumberofquestions:
                          sportscontroller.sportslistofquestions.length,
                      questions: sportscontroller.sportslistofquestions,
                      answers: sportscontroller.answersinstring));
                },
                onpresshome: () {
                  Get.back();
                },
                totalquestions: sportscontroller.sportslistofquestions.length,
                score: sportscontroller.score.value,
                correctanswers: sportscontroller.numberof_correctanswers.value,
                incorrectanswers:
                    sportscontroller.sportslistofquestions.length -
                        sportscontroller.numberof_correctanswers.value,
              )));
  }
}
