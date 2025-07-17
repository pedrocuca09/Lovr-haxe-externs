package lovr.math;

import lovr.math.Curve;
import lovr.math.RandomGenerator;
import lovr.math.Vec2;
import lovr.math.Vec3;
import lovr.math.Vec4;
import lovr.math.Quat;
import lovr.math.Mat4;

/**
 * Math module for random numbers, noise, and vector math.
 * https://lovr.org/docs/lovr.math
 */
extern class Math {
  /**
   * Generates Perlin noise.
   */
  static function noise(x:Float, y:Float, z:Float):Float;

  /**
   * Returns a random number.
   */
  static function random(?min:Float, ?max:Float):Float;

  /**
   * Returns a normally distributed random number.
   */
  static function randomNormal(?stddev:Float, ?mean:Float):Float;

  /**
   * Gets the current random seed.
   */
  static function getRandomSeed():Int;

  /**
   * Sets the random seed.
   */
  static function setRandomSeed(seed:Int):Void;

  /**
   * Converts a gamma-encoded value to linear.
   */
  static function gammaToLinear(value:Float):Float;

  /**
   * Converts a linear value to gamma-encoded.
   */
  static function linearToGamma(value:Float):Float;

     
} 