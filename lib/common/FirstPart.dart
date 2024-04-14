import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:QuizApp/common/SIISController.dart';
import '../../common/button_sections.dart';

class FirstPart extends StatelessWidget {
  List<dynamic> listofquestions = [];
  List<dynamic> listofanswers = [];
  Color? colors;
  int indexvalue;
  VoidCallback functioncallonpressingbutton;
  FirstPart(
      {super.key,
      required this.listofquestions,
      required this.listofanswers,
      required this.functioncallonpressingbutton,
      required this.indexvalue,
      this.colors});

  final itcontroller = Get.put(SIISController());

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
              padding: const EdgeInsets.only(left: 6.0, right: 6.0),
              child: Card(
                elevation: 5,
                child: Container(
                  color: Colors.grey.shade100,
                  height: 54,
                  width: Get.context!.width - 5,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Center(
                      child: Text(
                        listofquestions![indexvalue].toString(),
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal)),
                      ),
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
                  color: colors,
                  title: listofanswers[indexvalue][index],
                  onpress: () {
                    itcontroller.incrementindex();

                    itcontroller.correctanswerchecks.add(index);
                    functioncallonpressingbutton();
                  });
            })
      ],
    );
  }
}
