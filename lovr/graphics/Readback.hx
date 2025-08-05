package lovr.graphics;

@:native("lovr.graphics.Readback")
extern class Readback {
  public function getBlob():lovr.data.Blob;
  public function getData():Dynamic;
  public function getImage():lovr.data.Image;
  public function isComplete():Bool;
  public function wait():Bool;
}