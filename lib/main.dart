import 'package:flutter/material.dart';

import 'screen/flashcardapp.dart';

void main() {
  runApp( MyFlashApp());
}


class MyFlashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashcard App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlashcardApp(),
    );
  }
}














