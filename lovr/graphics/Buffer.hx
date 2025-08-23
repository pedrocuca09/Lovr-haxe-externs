package lovr.graphics;

@:native("lovr.graphics.Buffer")
extern class Buffer {
  public function getData():Dynamic;
  public function getFormat():String;
  public function getLength():Float;
  public function getSize():Float;
  public function getStride():Float;
  public function mapData():Dynamic;
  public function newReadback():lovr.graphics.Readback;
}