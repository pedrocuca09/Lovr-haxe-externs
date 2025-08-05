package lovr.math;

@:native("lovr.math.Curve")
extern class Curve {
  public function evaluate():Float;
  public function getPoint():Float;
  public function getPointCount():Float;
  public function getTangent():Float;
  public function render(?n:Float):Dynamic;
  public function slice():Dynamic;
}