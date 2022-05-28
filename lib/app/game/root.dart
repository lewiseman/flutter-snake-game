import 'package:flame/game.dart';
import 'package:snake_game/app/config/game_config.dart';

class SnakeGame extends FlameGame {
  OffSets offSets = OffSets(Vector2.zero());

  @override
  Future<void>? onLoad() {
    offSets = OffSets(canvasSize);
    return super.onLoad();
  }
}

class OffSets {
  Vector2 start = Vector2.zero();
  Vector2 end = Vector2.zero();

  OffSets(Vector2 canvasSize) {
    var gameAreaX = GameConfig.cellSize * GameConfig.columns;
    var gameAreaY = GameConfig.cellSize * GameConfig.rows;

    start =
        Vector2((canvasSize.x - gameAreaX) / 2, (canvasSize.y - gameAreaY) / 2);
    end = Vector2(canvasSize.x - start.x, canvasSize.y - start.y);
  }
}
