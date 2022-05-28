import 'dart:developer';

import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:snake_game/app/config/dependencies.dart';
import 'package:snake_game/app/game/root.dart';

void main() {
  SnakeGameDependencies.initialize();
  runApp(const MyApp());
}

// https://blog.devgenius.io/lets-create-a-snake-game-using-flutter-and-flame-38482d3cf0ff
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snake Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GameWidget(
        game: SnakeGame(),
      ),
    );
  }
}
