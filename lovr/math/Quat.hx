package lovr.math;

@:native("lovr.math.Quat")
extern class Quat {
  public function conjugate():Array<Float>;
  public function direction():Array<Float>;
  public function equals():Bool;
  public function getEuler():Float;
  public function length():Float;
  public function mul():Array<Float>;
  public function normalize():Array<Float>;
  public function set(?angle:Float):Array<Float>;
  public function setEuler():Array<Float>;
  public function slerp():Array<Float>;
  public function unpack(?raw:Bool):Float;
}