import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:QuizApp/QuizSections/Music/MusicController.dart';

import '../../common/button_sections.dart';

class MusicFirstPart extends StatelessWidget {
  final musiccontroller = Get.find<MusicController>();
  MusicFirstPart({super.key});

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
                      musiccontroller.listofquestions[
                          musiccontroller.indexvalue.value.toInt()],
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
                  color: Colors.blueGrey,
                  title: musiccontroller
                      .optionslist[musiccontroller.indexvalue.value.toInt()]
                          [index]
                      .toString(),
                  onpress: () {
                    musiccontroller.incrementindex();
                    musiccontroller.correctanswerchecks.add(index);

                    musiccontroller.checkanswers();
                  });
            })
      ],
    );
  }
}
