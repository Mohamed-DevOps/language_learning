import 'package:flutter/material.dart';
import 'package:language_learning/components/card_item.dart';
import 'package:language_learning/data/data.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return CardItem(
            color: const Color(0xff558B37),
            item: members[index],
          );
        },
      ),
    );
  }
}
