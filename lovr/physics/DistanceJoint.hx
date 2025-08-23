package lovr.physics;

@:native("lovr.physics.DistanceJoint")
extern class DistanceJoint {
  public function getLimits():Float;
  public function getSpring():Float;
}