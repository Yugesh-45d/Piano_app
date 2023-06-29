// ignore_for_file: prefer_const_constructors
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "piano_app",
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumber) {
      final player = AudioPlayer();
      player.play(
        AssetSource("note$soundNumber.wav"),
      );
    }

    Expanded soundCollection(Color color, int soundNumber) {
      return Expanded(
        child: OutlinedButton(
          onPressed: () {
            playSound(soundNumber);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
          ),
          child: Text(
            "",
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            soundCollection(Colors.yellow, 1),
            soundCollection(Colors.red, 2),
            soundCollection(Colors.green, 3),
            soundCollection(Colors.blue, 4),
            soundCollection(Colors.brown, 5),
            soundCollection(Colors.purple, 6),
            soundCollection(Colors.orange, 7),
          ],
        ),
      ),
    );
  }
}
