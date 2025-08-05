package lovr.graphics;

@:native("lovr.graphics.Model")
extern class Model {
  public function clone():lovr.graphics.Model;
  public function getAnimationCount():Float;
  public function getAnimationDuration():Float;
  public function getAnimationName():String;
  public function getBlendShapeCount():Float;
  public function getBlendShapeName():String;
  public function getBlendShapeWeight():Float;
  public function getBoundingBox():Float;
  public function getBoundingSphere():Float;
  public function getCenter():Float;
  public function getData():lovr.data.ModelData;
  public function getDepth():Float;
  public function getDimensions():Float;
  public function getHeight():Float;
  public function getIndexBuffer():lovr.graphics.Buffer;
  public function getMaterial():lovr.graphics.Material;
  public function getMaterialCount():Float;
  public function getMaterialName():String;
  public function getMesh():lovr.graphics.Mesh;
  public function getMeshCount():Float;
  public function getMetadata():String;
  public function getNodeChildren():Dynamic;
  public function getNodeCount():Float;
  public function getNodeName():String;
  public function getNodeOrientation():Float;
  public function getNodeParent():Float;
  public function getNodePose():Float;
  public function getNodePosition():Float;
  public function getNodeScale():Float;
  public function getNodeTransform():Float;
  public function getRootNode():Float;
  public function getTexture():lovr.graphics.Texture;
  public function getTextureCount():Float;
  public function getTriangleCount():Float;
  public function getTriangles():Dynamic;
  public function getVertexBuffer():lovr.graphics.Buffer;
  public function getVertexCount():Float;
  public function getWidth():Float;
  public function hasJoints():Bool;
}