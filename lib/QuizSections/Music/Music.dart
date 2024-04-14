import 'package:QuizApp/common/viewAnswers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuizApp/QuizSections/Music/MusicController.dart';
import 'package:QuizApp/QuizSections/Music/Music_firstpart.dart';

import '../../Utils/CustomAppBar.dart';
import '../../common/results.dart';

class Music extends StatefulWidget {
  Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  final musiccontroller = Get.put(MusicController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    musiccontroller.indexvalue.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(titles: "Music", color: Colors.blueGrey),
        body: Obx(() => musiccontroller.listofquestions.length >
                musiccontroller.indexvalue.value
            ? MusicFirstPart()
            : Result(
                onclickingresultsbutton: () {
                  musiccontroller.viewanswers();
                  Get.to(ViewAnswers(
                      totoalnumberofquestions:
                          musiccontroller.listofquestions.length,
                      questions: musiccontroller.listofquestions,
                      answers: musiccontroller.answersinstring));
                },
                onpresshome: () {
                  Get.back();
                },
                totalquestions: musiccontroller.listofquestions.length,
                score: musiccontroller.score.value,
                correctanswers: musiccontroller.numberof_correctanswers.value,
                incorrectanswers: musiccontroller.listofquestions.length -
                    musiccontroller.numberof_correctanswers.value,
              )));
  }
}
