package lovr.physics;

import haxe.extern.EitherType;

/**
 * Represents a box shape for physics.
 * https://lovr.org/docs/BoxShape
 */
extern class BoxShape {
  public function getDimensions():Array<Float>;
  public function setDimensions(width:Float, height:Float, depth:Float):Void;
} 