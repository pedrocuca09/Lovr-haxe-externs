package lovr.math;

@:native("lovr.math")
extern class Math {
  public function gammaToLinear():Float;
  public function getRandomSeed():Float;
  public function linearToGamma():Float;
  public function mat4():Array<Float>;
  public function newCurve():Dynamic;
  public function newMat4():Array<Float>;
  public function newQuat(?angle:Float):Array<Float>;
  public function newRandomGenerator():Dynamic;
  public function newVec2(?x:Float):Array<Float>;
  public function newVec3(?x:Float):Array<Float>;
  public function newVec4(?x:Float):Array<Float>;
  public function noise():Float;
  public function quat(?angle:Float):Array<Float>;
  public function random():Float;
  public function randomNormal(?sigma:Float):Float;
  public function vec2(?x:Float):Array<Float>;
  public function vec3(?x:Float):Array<Float>;
  public function vec4(?x:Float):Array<Float>;
  public function mathQuat():String;
  public function mathNewCurve():String;
  public function mathNewRandomGenerator():String;
  public function mathNoise():String;
  public function mathRandom():String;
  public function mathRandomNormal():String;
  public function mathGetRandomSeed():String;
  public function mathSetRandomSeed():String;
  public function mathGammaToLinear():String;
  public function mathLinearToGamma():String;
  public function mathNewQuat():String;
  public function mathQuat():String;
  public function mathDrain():String;
  public function lightUserdataOp():String;
}