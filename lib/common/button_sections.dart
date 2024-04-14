import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? title;
  final Color? color;
  final VoidCallback? onpress;
  const CustomElevatedButton(
      {super.key, this.title, required this.onpress, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(Get.context!.width, 50),
          backgroundColor: color,
        ),
        child: Text(title.toString()),
      ),
    );
  }
}
