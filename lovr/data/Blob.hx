package lovr.data;

@:native("lovr.data.Blob")
extern class Blob {
  public function getName():String;
  public function getPointer():Dynamic;
  public function getSize():Float;
  public function getString():String;
}