package lovr.data;

@:native("lovr.data.Image")
extern class Image {
  public function encode():lovr.data.Blob;
  public function getBlob():lovr.data.Blob;
  public function getDimensions():Float;
  public function getFormat():String;
  public function getHeight():Float;
  public function getPixel():Float;
  public function getPointer():Dynamic;
  public function getWidth():Float;
}