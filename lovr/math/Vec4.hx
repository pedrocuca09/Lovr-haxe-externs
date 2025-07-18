package lovr.math;

import haxe.extern.EitherType;

/**
 * Represents a 4D vector.
 * https://lovr.org/docs/Vec4
 */
extern class Vec4 {
  public var x:Float;
  public var y:Float;
  public var z:Float;
  public var w:Float;
  public function set(x:Float, y:Float, z:Float, w:Float):Vec4;
  public function add(v:EitherType<Vec4, Float>):Vec4;
  public function sub(v:EitherType<Vec4, Float>):Vec4;
  public function mul(v:EitherType<Vec4, Float>):Vec4;
  public function div(v:EitherType<Vec4, Float>):Vec4;
  public function dot(v:Vec4):Float;
  public function length():Float;
  public function normalize():Vec4;
  public function distance(v:Vec4):Float;
  public function lerp(v:Vec4, t:Float):Vec4;
  public function unpack():Array<Float>;
} 