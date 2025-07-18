package lovr.data;

import haxe.extern.EitherType;

/**
 * Represents model data loaded from a file or memory.
 * https://lovr.org/docs/ModelData
 */
extern class ModelData {
  public function getMeshCount():Int;
  public function getMaterialCount():Int;
  public function getMesh(index:Int):Dynamic;
  public function getMaterial(index:Int):Dynamic;
  public function getNodeCount():Int;
  public function getNodeName(index:Int):String;
  public function getNodeParent(index:Int):Int;
  public function getNodeChildren(index:Int):Array<Int>;
  public function getNodePosition(index:Int):Array<Float>;
  public function getNodeOrientation(index:Int):Array<Float>;
  public function getNodeScale(index:Int):Array<Float>;
  public function getNodeTransform(index:Int):Array<Float>;
  public function getTriangles(mesh:Int):Array<Int>;
  public function getVertexCount(mesh:Int):Int;
  public function getVertex(mesh:Int, index:Int):Array<Float>;
} 