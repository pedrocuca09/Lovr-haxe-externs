package lovr.graphics;

@:native("lovr.graphics.Buffer")
extern class Buffer {
  public function clear(?offset:Float):Void;
  public function getData(?index:Float):Dynamic;
  public function getFormat():String;
  public function getLength():Float;
  public function getSize():Float;
  public function getStride():Float;
  public function mapData(?offset:Float):Dynamic;
  public function newReadback(?offset:Float):lovr.graphics.Readback;
}