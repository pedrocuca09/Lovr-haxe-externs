package lovr.math;

@:native("lovr.math.Mat4")
extern class Mat4 {
  public function equals():Bool;
  public function fov():Array<Float>;
  public function getOrientation():Float;
  public function getPose():Float;
  public function getPosition():Float;
  public function getScale():Float;
  public function identity():Array<Float>;
  public function invert():Array<Float>;
  public function lookAt():Array<Float>;
  public function mul():Array<Float>;
  public function orthographic():Array<Float>;
  public function perspective():Array<Float>;
  public function reflect():Array<Float>;
  public function rotate():Array<Float>;
  public function scale():Array<Float>;
  public function set():Array<Float>;
  public function target():Array<Float>;
  public function translate():Array<Float>;
  public function transpose():Array<Float>;
  public function unpack(?raw:Bool):Void;
}