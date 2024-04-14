import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:QuizApp/HomeScreen/custom_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Open Quiz  Context",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Select a Category to start the quiz",
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomGridView()
          ],
        ),
      ),
    );
  }
}
