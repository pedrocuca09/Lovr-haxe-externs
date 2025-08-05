package lovr.graphics;

@:native("lovr.graphics.Shader")
extern class Shader {
  public function clone():lovr.graphics.Shader;
  public function getBufferFormat():Dynamic;
  public function getLabel():String;
  public function getType():String;
  public function getWorkgroupSize():Float;
  public function hasAttribute():Bool;
  public function hasStage():Bool;
  public function hasVariable():Bool;
}