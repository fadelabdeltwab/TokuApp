import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import 'package:toku/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<ItenModel> numbers = const [
    ItenModel(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojīchan',
        enName: 'Grand Father'),
    ItenModel(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grand Mother'),
    ItenModel(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Otōsan',
        enName: 'Father'),
    ItenModel(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'haha',
        enName: 'Mother'),
    ItenModel(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter'),
    ItenModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son'),
    ItenModel(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'Older Brthor'),
    ItenModel(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older Sister'),
    ItenModel(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'Younger Brother'),
    ItenModel(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'Younger Sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members | Kazoku (家族) '),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (Context, index) {
          return item(
            color: const Color(0xffcc7c68),
            items: numbers[index],
          );
        },
      ),
    );
  }
}
