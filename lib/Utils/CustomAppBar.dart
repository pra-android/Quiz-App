import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? titles;
  final double? elavation;
  final Color? color;
  CustomAppBar({super.key, this.titles, this.elavation, this.color});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elavation,
      backgroundColor: color,
      title: Text(titles.toString(),
          style: GoogleFonts.lato(
            textStyle: const TextStyle(fontSize: 17.5),
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
