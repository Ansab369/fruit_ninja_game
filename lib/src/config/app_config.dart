
import 'package:flame/components.dart';

class AppConfig{
   AppConfig._();  
  static const gravity = -9.81;
  static const double objSize = 50;
  static const double acceleration = -400;
  static final Vector2 shapeSize = Vector2.all(50);
}

// { AppConfig._();  } which prevents instances of this class from being created outside of the class itself. This means the class cannot be instantiated, as the constructor is private.
