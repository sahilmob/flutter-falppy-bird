import 'dart:async';

import 'package:flame/components.dart';
import 'package:flappy_bird/constants.dart';

class Bird extends SpriteComponent {
  Bird()
      : super(
          position: Vector2(birdStartX, birdStartY),
          size: Vector2(birdWidth, birdHeight),
        );

  double velocity = 0;

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("bird.png");
  }

  void flap() {
    velocity = jumpStrength;
  }

  @override
  void update(double dt) {
    velocity += gravity * dt;
    position.y += velocity * dt;
  }
}
