package lovr.math;

import haxe.extern.EitherType;

/**
 * Represents a 3D vector.
 * https://lovr.org/docs/Vec3
 */
extern class Vec3 {
  public var x:Float;
  public var y:Float;
  public var z:Float;
  public function set(x:Float, y:Float, z:Float):Vec3;
  public function add(v:EitherType<Vec3, Float>):Vec3;
  public function sub(v:EitherType<Vec3, Float>):Vec3;
  public function mul(v:EitherType<Vec3, Float>):Vec3;
  public function div(v:EitherType<Vec3, Float>):Vec3;
  public function dot(v:Vec3):Float;
  public function cross(v:Vec3):Vec3;
  public function length():Float;
  public function normalize():Vec3;
  public function distance(v:Vec3):Float;
  public function lerp(v:Vec3, t:Float):Vec3;
  public function unpack():Array<Float>;
} 