import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class item extends StatelessWidget {
  const item({super.key, required this.items, required this.color});
  final ItenModel items;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF6DC), child: Image.asset(items.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  items.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  items.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
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
