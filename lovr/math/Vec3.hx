package lovr.math;

@:native("lovr.math.Vec3")
extern class Vec3 {
  public function add():Array<Float>;
  public function angle():Float;
  public function cross():Array<Float>;
  public function distance():Float;
  public function div():Array<Float>;
  public function dot():Float;
  public function equals():Bool;
  public function length():Float;
  public function lerp():Array<Float>;
  public function mul():Array<Float>;
  public function normalize():Array<Float>;
  public function rotate():Array<Float>;
  public function set():Array<Float>;
  public function sub():Array<Float>;
  public function transform():Array<Float>;
  public function unpack():Float;
}