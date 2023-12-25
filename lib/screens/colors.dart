import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import 'package:toku/models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItenModel> numbers = const [
    ItenModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'kurokumo',
        enName: 'Black'),
    ItenModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'Brown'),
    ItenModel(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'kōdoshoku',
        enName: 'Dusty Yellow'),
    ItenModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'haiiro',
        enName: 'Gray'),
    ItenModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'midori',
        enName: 'Green'),
    ItenModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'akairo',
        enName: 'Red'),
    ItenModel(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'shiro',
        enName: 'White'),
    ItenModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'Yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors | Ior (色)'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (Context, index) {
          return item(
            color: const Color(0xffa58a86),
            items: numbers[index],
          );
        },
      ),
    );
  }
}
