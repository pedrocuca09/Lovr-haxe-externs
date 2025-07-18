package lovr.physics;

import haxe.extern.EitherType;

/**
 * Represents a mesh shape for physics.
 * https://lovr.org/docs/MeshShape
 */
extern class MeshShape {
  public function getVertexCount():Int;
  public function getVertex(index:Int):Array<Float>;
  public function getTriangleCount():Int;
  public function getTriangle(index:Int):Array<Int>;
} 