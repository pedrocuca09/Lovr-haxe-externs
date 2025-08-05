package lovr.physics;

@:native("lovr.physics.ConeJoint")
extern class ConeJoint {
  public function getAxis():Float;
  public function getLimit():Float;
}