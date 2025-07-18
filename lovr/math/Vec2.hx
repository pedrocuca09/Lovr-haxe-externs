package lovr.math;

import haxe.extern.EitherType;

/**
 * Represents a 2D vector.
 * https://lovr.org/docs/Vec2
 */
extern class Vec2 {
  public var x:Float;
  public var y:Float;
  public function set(x:Float, y:Float):Vec2;
  public function add(v:EitherType<Vec2, Float>):Vec2;
  public function sub(v:EitherType<Vec2, Float>):Vec2;
  public function mul(v:EitherType<Vec2, Float>):Vec2;
  public function div(v:EitherType<Vec2, Float>):Vec2;
  public function dot(v:Vec2):Float;
  public function length():Float;
  public function normalize():Vec2;
  public function distance(v:Vec2):Float;
  public function lerp(v:Vec2, t:Float):Vec2;
  public function unpack():Array<Float>;
} 