import 'package:flutter/material.dart';
import 'package:toku/components/pharses_item.dart';
import 'package:toku/models/number.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({super.key});
  final List<ItenModel> phraseslist = const [
    ItenModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'Jap: rai masu ka ?',
      enName: 'Are You Coming?',
    ),
    ItenModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Jap: hai 、 iam ga rai te iya masu',
      enName: 'Yes Iam Coming',
    ),
    ItenModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Jap : choushi wa dou desu ka',
      enName: 'How Are You Feeling?',
    ),
    ItenModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Jap:watashi wa anime ga daisuk desu',
      enName: 'I Love Anime',
    ),
    ItenModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Jap:watashi wa programming ga daisuk desu',
      enName: 'I Love Programming',
    ),
    ItenModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'Jap: programming wa kantan desu',
      enName: 'Programming is Easy',
    ),
    ItenModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Jap: anata no namae wa nani desu ka',
      enName: 'What is Your Name?',
    ),
    ItenModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'Jap: doko ni iyi masu ka',
      enName: 'Where Are You Going?',
    ),
    ItenModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Jap:koudoku suru koto wa wasure nai de kudasai',
      enName: 'Dont Forget To Subscribe',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases | Freze (フレーズ)'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phraseslist.length,
        itemBuilder: (Context, index) {
          return PhrasesItem(
            color: const Color(0xff66CCBE),
            items: phraseslist[index],
          );
        },
      ),
    );
  }
}
