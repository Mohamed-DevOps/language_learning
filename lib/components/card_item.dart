import 'package:flutter/material.dart';
import 'package:language_learning/components/card_info.dart';
import 'package:language_learning/models/item_model.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.color,
    required this.item,
  });

  final Color color;
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF6DC),
            child: Image.asset(item.imagePath!),
          ),
          Expanded(
            child: CardInfo(color: color, item: item),
          ),
        ],
      ),
    );
  }
}
