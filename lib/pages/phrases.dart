import 'package:flutter/material.dart';
import 'package:language_learning/components/phrases_item.dart';
import 'package:language_learning/data/data.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            color: const Color(0xFF50ADC7),
            item: phrases[index],
          );
        },
      ),
    );
  }
}
