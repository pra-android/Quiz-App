import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:QuizApp/QuizSections/Books/Books.dart';
import 'package:QuizApp/QuizSections/GeneralKnowledge/GeneralKnowledge.dart';
import 'package:QuizApp/QuizSections/Science/science.dart';

import '../QuizSections/Film/Film.dart';
import '../QuizSections/Information Technology/IT.dart';
import '../QuizSections/International/international.dart';
import '../QuizSections/Sports/Sports.dart';
import '../QuizSections/Music/Music.dart';

List<String> list_of_category = [
  "General Knowledge",
  "Books",
  "Film",
  "Music",
  "Sports",
  "Information Technology",
  "International",
  "Science"
];

List<FaIcon> list_of_categoryicons = const [
  FaIcon(
    FontAwesomeIcons.earth,
    color: Colors.white,
    size: 28,
  ),
  FaIcon(
    FontAwesomeIcons.book,
    color: Colors.white,
    size: 28,
  ),
  FaIcon(
    FontAwesomeIcons.film,
    color: Colors.white,
    size: 28,
  ),
  FaIcon(
    FontAwesomeIcons.music,
    color: Colors.white,
    size: 27,
  ),
  FaIcon(
    FontAwesomeIcons.playstation,
    color: Colors.white,
    size: 28,
  ),
  FaIcon(
    FontAwesomeIcons.television,
    color: Colors.white,
    size: 28,
  ),
  FaIcon(
    FontAwesomeIcons.map,
    color: Colors.white,
    size: 28,
  ),
  FaIcon(
    FontAwesomeIcons.peopleLine,
    color: Colors.white,
    size: 28,
  ),
];

List<Widget> routingthroughgridbuilder = [
  GeneralKnowledge(),
  Books(),
  Film(),
  Music(),
  Sports(),
  InformationTechnology(),
  International(),
  Science(),
];
