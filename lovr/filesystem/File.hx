package lovr.filesystem;

@:native("lovr.filesystem.File")
extern class File {
  public function getMode():Dynamic;
  public function getPath():String;
  public function getSize():Float;
  public function isEOF():Bool;
  public function read():String;
  public function tell():Float;
  public function write():Bool;
}