package lovr.math;

@:native("lovr.math.RandomGenerator")
extern class RandomGenerator {
  public function getSeed():Float;
  public function getState():String;
  public function random():Float;
  public function randomNormal(?sigma:Float):Float;
}