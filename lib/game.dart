import 'dart:async';
import 'package:flame/game.dart';
import 'package:flame/events.dart';
import 'package:flappy_bird/components/background.dart';

import 'package:flappy_bird/components/bird.dart';
import 'package:flappy_bird/components/ground.dart';

class FlappyBirdGame extends FlameGame with TapDetector {
  late Bird bird;
  late Background background;
  late Ground ground;

  @override
  FutureOr<void> onLoad() {
    background = Background(size);
    add(background);

    ground = Ground();
    add(ground);

    bird = Bird();
    add(bird);
  }

  @override
  void onTap() {
    bird.flap();
  }
}
