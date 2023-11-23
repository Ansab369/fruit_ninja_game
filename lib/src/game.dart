
import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

class MainRouterGame extends FlameGame {
  @override
  FutureOr<void> onLoad() async{
    // TODO: implement onLoad
   await  super.onLoad();
   add(RectangleComponent(
    size: Vector2.all(50),
    position: size/2, 
   ));
  }
}