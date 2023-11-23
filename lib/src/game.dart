import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:fruit_ninja_game/src/components/rectangle_test.dart';
import 'package:fruit_ninja_game/src/config/app_config.dart';

class MainRouterGame extends FlameGame with TapCallbacks {
  late double maxVerticalVelocity;

  @override
  void onTapDown(TapDownEvent event) {
    super.onTapDown(event);
      add(
      RectangleTest(
        Vector2(size.x / 2, size.y),
        pageSize: size,
        velocity: Vector2(0, maxVerticalVelocity),
      ),
    );
  }

  // @override
  // FutureOr<void> onLoad() async {
  //   await super.onLoad();
  // }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    getMaxVerticalVelocity(size);
  }

  void getMaxVerticalVelocity(Vector2 size) {
//     Calculate max initial velocity to achieve page height with the "√(2 * ay)" formula.
// where:
// a is the acceleration of the object
// y is the height of the page

    maxVerticalVelocity = sqrt( 2 * 
    (AppConfig.gravity.abs() + AppConfig.acceleration.abs()) *
            (size.y - AppConfig.objSize * 2));
  }
}




//  Vector2(0, 0) 