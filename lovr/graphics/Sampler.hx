package lovr.graphics;

@:native("lovr.graphics.Sampler")
extern class Sampler {
  public function getAnisotropy():Float;
  public function getCompareMode():String;
  public function getFilter():String;
  public function getMipmapRange():Float;
  public function getWrap():String;
}