import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/content.dart';
import 'package:sciencenotes/widgets/question_card.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class QuestionsPage extends StatefulWidget {
  final Content conteudo;

  const QuestionsPage({
    Key? key,
    required this.conteudo,
  }) : super(key: key);

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: CarouselSlider(
    //     items: [
    //       QuestionCard(
    //         content: widget.conteudo,
    //         index: 0,
    //       ),
    //       const SizedBox(
    //         height: 2,
    //       ),
    //       QuestionCard(
    //         content: widget.conteudo,
    //         index: 1,
    //       ),
    //       const SizedBox(
    //         height: 2,
    //       ),
    //       QuestionCard(
    //         content: widget.conteudo,
    //         index: 2,
    //       ),
    //       const SizedBox(
    //         height: 2,
    //       ),
    //     ],
    //     options: CarouselOptions(height: 500),
    //   ),
    // );
    return ListView(
      children: [
        QuestionCard(content: widget.conteudo, index: 0,),
        const SizedBox(height: 2,),
        QuestionCard(content: widget.conteudo, index: 1,),
        const SizedBox(height: 2,),
        QuestionCard(content: widget.conteudo, index: 2,),
        const SizedBox(height: 2,),
      ],
    );
  }
}
