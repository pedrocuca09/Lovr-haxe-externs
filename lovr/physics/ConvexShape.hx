package lovr.physics;

import haxe.extern.EitherType;

/**
 * Represents a convex shape for physics.
 * https://lovr.org/docs/ConvexShape
 */
extern class ConvexShape {
  public function getPointCount():Int;
  public function getPoint(index:Int):Array<Float>;
} 