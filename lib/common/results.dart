import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? totalquestions;
  final int? score;
  final int? correctanswers;
  final int? incorrectanswers;
  final VoidCallback? onpresshome;
  final VoidCallback? onclickingresultsbutton;
  const Result(
      {super.key,
      this.correctanswers,
      this.incorrectanswers,
      this.score,
      this.totalquestions,
      required this.onclickingresultsbutton,
      this.onpresshome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.white])),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: ListTile(
                      leading: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Text(
                          "Total Questions",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      trailing: Text(totalquestions.toString()),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ListTile(
                        leading: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                            "Score",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Text(score.toString()),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                        leading: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                            "Correct Answers",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Text(
                            "${correctanswers}" + "/" + "${totalquestions}"),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ListTile(
                        leading: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                            "Incorrect Answers",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        trailing: Text(
                            "${incorrectanswers}" + "/" + "${totalquestions}"),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: onpresshome,
                    child: Container(
                      width: 125,
                      height: 58,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Center(
                          child: Text(
                        "GoTo Home",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: onclickingresultsbutton,
                    child: Container(
                      width: 155,
                      height: 58,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.only(left: 2.0),
                        child: Text(
                          "Check Answers",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
