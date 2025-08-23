package lovr.physics;

@:native("lovr.physics.SliderJoint")
extern class SliderJoint {
  public function getAxis():Float;
  public function getFriction():Float;
  public function getLimits():Float;
  public function getMaxMotorForce():Float;
  public function getMotorForce():Float;
  public function getMotorMode():Dynamic;
  public function getMotorSpring():Float;
  public function getMotorTarget():Float;
  public function getPosition():Float;
  public function getSpring():Float;
}