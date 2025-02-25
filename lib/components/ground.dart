import 'dart:async';
import 'package:flame/components.dart';

import 'package:flappy_bird/game.dart';
import 'package:flappy_bird/constants.dart';

class Ground extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Ground() : super();

  @override
  FutureOr<void> onLoad() async {
    size = Vector2(2 * gameRef.size.x, groundHeight);
    position = Vector2(0, gameRef.size.y - groundHeight);

    sprite = await Sprite.load("ground.png");
  }

  @override
  void update(double dt) {
    position.x -= groundScrollingSpeed * dt;
    if (position.x + size.x / 2 <= 0) {
      position.x = 0;
    }
  }
}
