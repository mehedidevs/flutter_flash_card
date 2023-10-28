
import 'package:flutter/material.dart';

import '../model/flashcarddeck.dart';
import '../widget/flashcarditem.dart';

class FlashcardDeckScreen extends StatelessWidget {
  final FlashcardDeck deck;

  FlashcardDeckScreen({required this.deck});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(deck.deckName),
      ),
      body: ListView.builder(
        itemCount: deck.flashcards.length,
        itemBuilder: (context, index) {
          return FlashcardItem(flashcard: deck.flashcards[index]);
        },
      ),
    );
  }
}