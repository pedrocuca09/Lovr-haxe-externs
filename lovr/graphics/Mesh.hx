package lovr.graphics;

import haxe.extern.EitherType;

/**
 * Represents a mesh for 3D geometry.
 * https://lovr.org/docs/Mesh
 */
extern class Mesh {
  public function getVertexCount():Int;
  public function setVertices(vertices:Dynamic):Void;
  public function getVertices():Dynamic;
  public function setIndices(indices:Dynamic):Void;
  public function getIndices():Dynamic;
  public function setMaterial(material:Material):Void;
  public function getMaterial():Material;
  public function setDrawMode(mode:String):Void;
  public function getDrawMode():String;
  public function setDrawRange(start:Int, count:Int):Void;
  public function getDrawRange():Dynamic;
  public function setVertex(index:Int, values:Dynamic):Void;
  public function getVertex(index:Int):Dynamic;
  public function setVertexAttribute(index:Int, attribute:Int, values:Dynamic):Void;
  public function getVertexAttribute(index:Int, attribute:Int):Dynamic;
  public function getVertexFormat():Dynamic;
  public function setVerticesData(data:Dynamic, ?start:Int, ?count:Int):Void;
  public function getVertexMap(?data:Dynamic):Dynamic;
} 