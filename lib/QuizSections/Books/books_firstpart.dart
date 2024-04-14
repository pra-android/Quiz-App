import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:QuizApp/QuizSections/Books/bookscontroller.dart';

import '../../common/button_sections.dart';

class BookFirstPart extends StatelessWidget {
  BookFirstPart({super.key});
  final bookcontroller = Get.put(BookController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Card(
                elevation: 5,
                child: Container(
                  color: Colors.grey.shade100,
                  height: 50,
                  width: Get.context!.width - 5,
                  child: Center(
                    child: Text(
                      bookcontroller.listofrandomquestions[
                          bookcontroller.indexvalue.value.toInt()],
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return CustomElevatedButton(
                  color: Colors.black,
                  title: bookcontroller.listofrandomanswers[
                          bookcontroller.indexvalue.value.toInt()][index]
                      .toString(),
                  onpress: () {
                    bookcontroller.incrementindex();
                    bookcontroller.correctanswerchecks.add(index);

                    bookcontroller.checkanswers();
                  });
            })
      ],
    );
  }
}
