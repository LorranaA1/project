import 'package:flutter/material.dart';

class Question {
  final String institute;
  final String question;
  final String alt1;
  final String alt2;
  final String alt3;
  final String alt4;
  final String alt5;
  final Color colorQuestion;
  final int alterCorrect;


  Question({
    required this.institute,
    required this.question,
    required this.alt1,
    required this.alt2,
    required this.alt3,
    required this.alt4, 
    required this.alt5,
    required this.colorQuestion,
    required this.alterCorrect,
  });
}
