import 'dart:async';
import 'package:flame/game.dart';
import 'package:flame/events.dart';

import 'package:flappy_bird/components/bird.dart';

class FlappyBirdGame extends FlameGame with TapDetector {
  late Bird bird;

  @override
  FutureOr<void> onLoad() {
    bird = Bird();
    add(bird);
  }

  @override
  void onTap() {
    bird.flap();
  }
}
