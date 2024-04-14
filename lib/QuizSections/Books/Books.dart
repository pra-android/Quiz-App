import 'package:QuizApp/common/viewAnswers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:QuizApp/QuizSections/Books/books_firstpart.dart';
import 'package:QuizApp/QuizSections/Books/bookscontroller.dart';
import '../../Utils/CustomAppBar.dart';
import '../../common/results.dart';

class Books extends StatefulWidget {
  Books({super.key});

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  final bookcontroller = Get.put(BookController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bookcontroller.indexvalue.value = 0;
    bookcontroller.generaterandomnumbers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          titles: "Books",
          color: Colors.black,
        ),
        body: Obx(() => bookcontroller.listofrandomquestions.length >
                bookcontroller.indexvalue.value
            ? BookFirstPart()
            : Result(
                onclickingresultsbutton: () {
                  Get.to(ViewAnswers(
                      totoalnumberofquestions:
                          bookcontroller.listofrandomquestions.length,
                      questions: bookcontroller.listofrandomquestions,
                      answers: bookcontroller.listofrandomcorrectanwersString));
                },
                onpresshome: () {
                  Get.back();
                },
                totalquestions: bookcontroller.listofrandomquestions.length,
                score: bookcontroller.score.value,
                correctanswers: bookcontroller.numberof_correctanswers.value,
                incorrectanswers: bookcontroller.listofrandomquestions.length -
                    bookcontroller.numberof_correctanswers.value,
              )));
  }
}
