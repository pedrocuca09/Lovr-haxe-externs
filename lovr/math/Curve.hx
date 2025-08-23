package lovr.math;

@:native("lovr.math.Curve")
extern class Curve {
  public function evaluate():Float;
  public function getPoint():Float;
  public function getPointCount():Float;
  public function getTangent():Float;
  public function render():Dynamic;
  public function slice():Dynamic;
}