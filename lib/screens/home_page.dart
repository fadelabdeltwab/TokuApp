import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Dictionary | Jisho (辞書)'),
      ),
      body: Column(children: [
        Category(
          text: 'Numbers | Bango (番号)',
          color: const Color(0xffEF9235),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const NumbersPage();
            }));
          },
        ),
        Category(
          text: 'Family Members | Kazoku (家族)',
          color: const Color(0xffcc7c68),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const FamilyMembersPage();
                },
              ),
            );
          },
        ),
        Category(
          text: 'Colors | Ior (色)',
          color: const Color(0xffa58a86),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const ColorsPage();
                },
              ),
            );
          },
        ),
        Category(
          text: 'Phrases | Freze (フレーズ)',
          color: const Color(0xff66CCBE),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const PharsesPage();
                },
              ),
            );
          },
        ),
      ]),
    );
  }
}
