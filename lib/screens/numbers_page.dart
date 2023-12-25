import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import 'package:toku/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItenModel> numbers = const [
    ItenModel(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    ItenModel(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two'),
    ItenModel(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three'),
    ItenModel(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four'),
    ItenModel(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five'),
    ItenModel(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six'),
    ItenModel(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'shichi',
        enName: 'seven'),
    ItenModel(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    ItenModel(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyū',
        enName: 'nine'),
    ItenModel(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'jū',
        enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers | Bango (番号)'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (Context, index) {
          return item(
            color: const Color(0xffEF9235),
            items: numbers[index],
          );
        },
      ),
    );
  }
}
