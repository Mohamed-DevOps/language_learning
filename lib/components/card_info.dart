import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/models/item_model.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
    required this.color,
    required this.item,
  });

  final Color color;
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              item.jpName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Text(
              item.enName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      const Spacer(flex: 1),
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: IconButton(
          onPressed: () async {
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
    ]);
  }
}
