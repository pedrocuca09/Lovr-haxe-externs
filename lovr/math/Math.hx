package lovr.math;

import lovr.math.Curve;
import lovr.math.RandomGenerator;
import lovr.math.Vec2;
import lovr.math.Vec3;
import lovr.math.Vec4;
import lovr.math.Quat;
import lovr.math.Mat4;
import haxe.extern.EitherType;

/**
 * Math module for random numbers, noise, and vector math.
 * https://lovr.org/docs/lovr.math
 */
extern class Math {
  static function noise(x:Float, ?y:Float, ?z:Float, ?w:Float):Float;
  static function random(?min:Float, ?max:Float):Float;
  static function randomNormal(?stddev:Float, ?mean:Float):Float;
  static function getRandomSeed():Int;
  static function setRandomSeed(seed:Int):Void;
  static function gammaToLinear(value:Float):Float;
  static function linearToGamma(value:Float):Float;
  static function newVec2(x:Float, y:Float):Vec2;
  static function newVec3(x:Float, y:Float, z:Float):Vec3;
  static function newVec4(x:Float, y:Float, z:Float, w:Float):Vec4;
  static function newQuat(x:Float, y:Float, z:Float, w:Float):Quat;
  static function newMat4():Mat4;
  static function newCurve(points:Array<Float>):Curve;
  static function newRandomGenerator(?seed:Int):RandomGenerator;
  static function drain():Void;
} 