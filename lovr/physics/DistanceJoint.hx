package lovr.physics;

@:native("lovr.physics.DistanceJoint")
extern class DistanceJoint {
  public function getLimits():Float;
  public function getSpring():Float;
  public function setLimits(?min:Float):Void;
  public function setSpring(?frequency:Float):Void;
}