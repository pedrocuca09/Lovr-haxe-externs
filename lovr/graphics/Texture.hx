package lovr.graphics;

@:native("lovr.graphics.Texture")
extern class Texture {
  public function getDimensions():Float;
  public function getFormat():String;
  public function getHeight():Float;
  public function getLabel():String;
  public function getLayerCount():Float;
  public function getMipmapCount():Float;
  public function getPixels():lovr.data.Image;
  public function getSampleCount():Float;
  public function getSampler():lovr.graphics.Sampler;
  public function getType():String;
  public function getWidth():Float;
  public function hasUsage():Bool;
  public function newReadback():lovr.graphics.Readback;
}