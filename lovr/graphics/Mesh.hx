package lovr.graphics;

@:native("lovr.graphics.Mesh")
extern class Mesh {
  public function computeBoundingBox():Bool;
  public function getBoundingBox():Float;
  public function getDrawMode():String;
  public function getDrawRange():Float;
  public function getIndexBuffer():lovr.graphics.Buffer;
  public function getIndices():Dynamic;
  public function getMaterial():lovr.graphics.Material;
  public function getVertexBuffer():lovr.graphics.Buffer;
  public function getVertexCount():Float;
  public function getVertexFormat():String;
  public function getVertexStride():Float;
  public function getVertices(?index:Float):Dynamic;
}