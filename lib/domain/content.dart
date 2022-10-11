import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/question.dart';
import 'package:sciencenotes/domain/resume.dart';
import 'package:sciencenotes/domain/videos.dart';

class Content {
  final String image;
  final String title;
  final String introduction;
  final Resume resume;
  final String aplicacao;
  final String equacao;
  final Color colorButton;
  final Color colorContent;
  final List<Question> question;
  final List<Videos> videos;

  Content({
    required this.image,
    required this.title,
    required this.introduction,
    required this.resume,
    required this.aplicacao,
    required this.equacao,
    required this.colorButton,
    required this.colorContent,
    required this.question,
    required this.videos,
  });
}