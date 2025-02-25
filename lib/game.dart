import 'dart:async';
import 'package:flame/game.dart';
import 'package:flame/events.dart';
import 'package:flappy_bird/components/background.dart';

import 'package:flappy_bird/components/bird.dart';

class FlappyBirdGame extends FlameGame with TapDetector {
  late Bird bird;
  late Background background;

  @override
  FutureOr<void> onLoad() {
    background = Background(size);
    add(background);

    bird = Bird();
    add(bird);
  }

  @override
  void onTap() {
    bird.flap();
  }
}
