package lovr.data;

@:native("lovr.data.Blob")
extern class Blob {
  public function getF32(?offset:Float):Void;
  public function getF64(?offset:Float):Void;
  public function getI16(?offset:Float):Void;
  public function getI32(?offset:Float):Void;
  public function getI8(?offset:Float):Void;
  public function getName():String;
  public function getPointer():Dynamic;
  public function getSize():Float;
  public function getString(?offset:Float):String;
  public function getU16(?offset:Float):Void;
  public function getU32(?offset:Float):Void;
  public function getU8(?offset:Float):Void;
}