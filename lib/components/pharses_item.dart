import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.items, required this.color});
  final ItenModel items;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  items.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  items.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(items.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                )),
          ),
        ],
      ),
    );
  }
}
