import 'package:flutter/material.dart';
import 'package:language_learning/components/card_item.dart';
import 'package:language_learning/data/data.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return CardItem(
            color: const Color(0xFF79359F),
            item: colors[index],
          );
        },
      ),
    );
  }
}
