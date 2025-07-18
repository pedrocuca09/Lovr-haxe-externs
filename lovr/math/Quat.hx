package lovr.math;

import haxe.extern.EitherType;

/**
 * Represents a quaternion.
 * https://lovr.org/docs/Quat
 */
extern class Quat {
  public var x:Float;
  public var y:Float;
  public var z:Float;
  public var w:Float;
  public function set(x:Float, y:Float, z:Float, w:Float):Quat;
  public function mul(q:Quat):Quat;
  public function normalize():Quat;
  public function length():Float;
  public function conjugate():Quat;
  public function slerp(q:Quat, t:Float):Quat;
  public function unpack():Array<Float>;
} 