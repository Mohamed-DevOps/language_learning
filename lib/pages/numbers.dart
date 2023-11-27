import 'package:flutter/material.dart';
import 'package:language_learning/components/card_item.dart';
import 'package:language_learning/data/data.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return CardItem(
            color: const Color(0xFFEF9235),
            item: numbers[index],
          );
        },
      ),
    );
  }
}
