import 'package:QuizApp/common/viewAnswers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuizApp/common/SIISController.dart';

import '../../Utils/CustomAppBar.dart';
import '../../common/FirstPart.dart';
import '../../common/results.dart';

class InformationTechnology extends StatefulWidget {
  InformationTechnology({super.key});

  @override
  State<InformationTechnology> createState() => _InformationTechnologyState();
}

class _InformationTechnologyState extends State<InformationTechnology> {
  final itcontroller = Get.put(SIISController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itcontroller.indexvalue.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          titles: "Information Technology",
          color: Colors.blueAccent,
        ),
        body: Obx(() => itcontroller.sportslistofquestions.length >
                itcontroller.indexvalue.value
            ? FirstPart(
                colors: Colors.blueAccent,
                listofquestions: itcontroller.itlistofquestions,
                listofanswers: itcontroller.itanswerslist,
                indexvalue: itcontroller.indexvalue.value,
                functioncallonpressingbutton: () {
                  itcontroller.checkitnanswers();
                })
            : Result(
                onclickingresultsbutton: () {
                  itcontroller.viewanswersofit();
                  Get.to(() => ViewAnswers(
                      totoalnumberofquestions:
                          itcontroller.itlistofquestions.length,
                      questions: itcontroller.itlistofquestions,
                      answers: itcontroller.answersinstring));
                },
                onpresshome: () {
                  Get.back();
                },
                totalquestions: itcontroller.itlistofquestions.length,
                score: itcontroller.score.value,
                correctanswers: itcontroller.numberof_correctanswers.value,
                incorrectanswers: itcontroller.itlistofquestions.length -
                    itcontroller.numberof_correctanswers.value,
              )));
  }
}
