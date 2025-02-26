import 'dart:async';

import 'package:flame/components.dart';
import 'package:flappy_bird/constants.dart';

class Background extends SpriteComponent {
  Background(Vector2 size)
      : super(
          size: size,
          position: Vector2(0, -(groundHeight * 0.3)),
        );

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("background.png");
  }
}
