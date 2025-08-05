package lovr.physics;

@:native("lovr.physics.ConvexShape")
extern class ConvexShape {
  public function getFace():Dynamic;
  public function getFaceCount():Float;
  public function getPoint():Float;
  public function getPointCount():Float;
  public function getScale():Float;
}