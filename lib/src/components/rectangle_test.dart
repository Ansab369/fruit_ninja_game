import 'dart:math';

import 'package:flame/components.dart';
import 'package:fruit_ninja_game/src/config/app_config.dart';

class RectangleTest extends RectangleComponent {
  Vector2 velocity;
  final Vector2 pageSize;
  // Vector2? touchPoint1, touchPoint2;

  RectangleTest(Vector2 position,{required this.pageSize, required this.velocity})
      : super(
            size: AppConfig.shapeSize,
            position: position,
            anchor: Anchor.center);

  @override
  void update(double dt) {
    super.update(dt);
    angle += .5 * dt;
    angle %= 2 * pi;
    //!

    // I use the "s = ut + 1 / 2a(t*t)" formula for the rectangle's motion.
    // a is acceleration
    // t is dt ( delta time )

    // s = new Position
    // u = initial velocity
    // dt = delta time or time increment
    // a = accelaration

    position +=  Vector2(0, -(velocity.y * dt -
         .5 * AppConfig.gravity * dt * dt
         ));

    //!

//     Use "v = u + at" to change the rectangle's velocity
// where:
// v is the final velocity of the object
// u is the initial velocity of the object
// a is the acceleration of the object
// t is the time interval

    velocity.y += (AppConfig.acceleration + AppConfig.gravity) * dt;

    if ((position.y - AppConfig.objSize) > pageSize.y) {
      removeFromParent();
    }
  }
}
