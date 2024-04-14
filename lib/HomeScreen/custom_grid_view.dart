import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../QuizSections/GeneralKnowledge/GeneralKnowledge.dart';
import '../common/listofarrray.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: GridView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: list_of_category.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 7,
            mainAxisSpacing: 10,
            childAspectRatio: 1.185),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(() => routingthroughgridbuilder[index]);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    list_of_categoryicons[index],
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      list_of_category[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
