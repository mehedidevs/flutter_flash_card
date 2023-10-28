import 'package:flutter/material.dart';
import '../model/flashcard.dart';
import '../model/flashcarddeck.dart';
import 'flashcarddeckScreen.dart';

class FlashcardApp extends StatefulWidget {
  @override
  _FlashcardAppState createState() => _FlashcardAppState();
}
class _FlashcardAppState extends State<FlashcardApp> {
  List<FlashcardDeck> decks = [
    FlashcardDeck(
      deckName: 'Science',
      flashcards: [
        Flashcard(question: 'What is the powerhouse of the cell?', answer: 'Mitochondria'),
        Flashcard(question: 'What is the chemical symbol for water?', answer: 'H2O'),
      ],
    ),
    FlashcardDeck(
      deckName: 'History',
      flashcards: [
        Flashcard(question: 'Who was the first president of the United States?', answer: 'George Washington'),
        Flashcard(question: 'In which year did World War II end?', answer: '1945'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flashcard App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flashcard App'),
        ),
        body: ListView.builder(
          itemCount: decks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(decks[index].deckName),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlashcardDeckScreen(deck: decks[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}