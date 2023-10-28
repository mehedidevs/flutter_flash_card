import 'package:flutter/material.dart';

import '../model/flashcard.dart';

class FlashcardItem extends StatefulWidget {
  final Flashcard flashcard;

  const FlashcardItem({super.key, required this.flashcard});

  @override
  _FlashcardItemState createState() => _FlashcardItemState();
}

class _FlashcardItemState extends State<FlashcardItem> {
  bool isAnswerVisible = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          isAnswerVisible ? widget.flashcard.answer : widget.flashcard.question,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        onTap: () {
          setState(() {
            isAnswerVisible = !isAnswerVisible;
          });
        },
      ),
    );
  }
}