package lovr.physics;

import haxe.extern.EitherType;

/**
 * Represents a capsule shape for physics.
 * https://lovr.org/docs/CapsuleShape
 */
extern class CapsuleShape {
  public function getRadius():Float;
  public function setRadius(radius:Float):Void;
  public function getLength():Float;
  public function setLength(length:Float):Void;
} 