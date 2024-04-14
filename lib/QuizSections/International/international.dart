import 'package:QuizApp/common/viewAnswers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuizApp/common/SIISController.dart';

import '../../Utils/CustomAppBar.dart';
import '../../common/FirstPart.dart';
import '../../common/results.dart';

class International extends StatefulWidget {
  International({super.key});

  @override
  State<International> createState() => _InternationalState();
}

class _InternationalState extends State<International> {
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
          titles: "International",
          color: Colors.pink,
        ),
        body: Obx(() => internationalcontroller.sportslistofquestions.length >
                internationalcontroller.indexvalue.value
            ? FirstPart(
                colors: Colors.pink,
                listofquestions: internationalcontroller.intllistofquestions,
                listofanswers: internationalcontroller.intlanswerslist,
                indexvalue: internationalcontroller.indexvalue.value,
                functioncallonpressingbutton: () {
                  internationalcontroller.checkeintlanswers();
                })
            : Result(
                onclickingresultsbutton: () {
                  internationalcontroller.viewanswersofinternational();
                  Get.to(() => ViewAnswers(
                      totoalnumberofquestions:
                          internationalcontroller.intllistofquestions.length,
                      questions: internationalcontroller.intllistofquestions,
                      answers: internationalcontroller.answersinstring));
                },
                onpresshome: () {
                  Get.back();
                },
                totalquestions:
                    internationalcontroller.intllistofquestions.length,
                score: internationalcontroller.score.value,
                correctanswers:
                    internationalcontroller.numberof_correctanswers.value,
                incorrectanswers:
                    internationalcontroller.intllistofquestions.length -
                        internationalcontroller.numberof_correctanswers.value,
              )));
  }
}
