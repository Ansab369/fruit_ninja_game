import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:fruit_ninja_game/src/game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Flame.device.fullScreen();
  Flame.device.setLandscape();

  runApp(GameWidget(game: MainRouterGame()));
}



// created app
// added assets & in pubSpec.yaml
/// added flame depentancy
/// added GameWidget in main.dart
/// crea6ted MainRouterGame  , onLoad added RectangleComponent