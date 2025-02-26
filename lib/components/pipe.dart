import 'dart:async';

import 'package:flame/components.dart';

class Pipe extends SpriteComponent {
  @override
  FutureOr<void> onLoad() async {
    size = Vector2(2, 2);
    position = Vector2(0, 2);

    sprite = await Sprite.load("ground.png");
  }
}
