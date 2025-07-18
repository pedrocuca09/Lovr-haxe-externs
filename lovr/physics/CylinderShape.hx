package lovr.physics;

import haxe.extern.EitherType;

/**
 * Represents a cylinder shape for physics.
 * https://lovr.org/docs/CylinderShape
 */
extern class CylinderShape {
  public function getRadius():Float;
  public function setRadius(radius:Float):Void;
  public function getLength():Float;
  public function setLength(length:Float):Void;
} 