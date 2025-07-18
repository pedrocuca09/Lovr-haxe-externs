package lovr.math;

import haxe.extern.EitherType;

/**
 * Represents a 4x4 matrix.
 * https://lovr.org/docs/Mat4
 */
extern class Mat4 {
  public function toArray():Array<Float>;
  public function set(args:EitherType<Array<Float>, Mat4>):Mat4;
  public function identity():Mat4;
  public function invert():Mat4;
  public function transpose():Mat4;
  public function mul(n:EitherType<Mat4, Vec3, Vec4>):EitherType<Mat4, Vec3, Vec4>;
  public function translate(x:Float, y:Float, z:Float):Mat4;
  public function scale(x:Float, y:Float, z:Float):Mat4;
  public function rotate(angle:Float, ax:Float, ay:Float, az:Float):Mat4;
  public function lookAt(from:Vec3, to:Vec3, up:Vec3):Mat4;
  public function perspective(near:Float, far:Float, fov:Float, aspect:Float):Mat4;
  public function orthographic(left:Float, right:Float, up:Float, down:Float, near:Float, far:Float):Mat4;
  public function unpack():Array<Float>;
} 