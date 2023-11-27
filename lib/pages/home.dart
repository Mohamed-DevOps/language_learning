import 'package:flutter/material.dart';
import 'package:language_learning/components/category.dart';
import 'package:language_learning/pages/colors.dart';
import 'package:language_learning/pages/family_members.dart';
import 'package:language_learning/pages/numbers.dart';
import 'package:language_learning/pages/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6DB),
      appBar: AppBar(
        title: const Text('Toku'),
      ),
      body: const Column(
        children: [
          Category(
            color: Color(0xFFEF9235),
            categoryName: 'Numbers',
            page: NumbersPage(),
          ),
          Category(
            color: Color(0xFF558B37),
            categoryName: 'Family Members',
            page: FamilyMembersPage(),
          ),
          Category(
            color: Color(0xFF79359F),
            categoryName: 'Colors',
            page: ColorsPage(),
          ),
          Category(
            color: Color(0xFF50ADC7),
            categoryName: 'Phrases',
            page: PhrasesPage(),
          ),
        ],
      ),
    );
  }
}
