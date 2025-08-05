package lovr.physics;

@:native("lovr.physics.HingeJoint")
extern class HingeJoint {
  public function getAngle():Float;
  public function getAxis():Float;
  public function getFriction():Float;
  public function getLimits():Float;
  public function getMaxMotorTorque():Float;
  public function getMotorMode():Dynamic;
  public function getMotorSpring():Float;
  public function getMotorTarget():Float;
  public function getMotorTorque():Float;
  public function getSpring():Float;
  public function setMaxMotorTorque(?positive:Float):Void;
  public function setMotorSpring(?frequency:Float):Void;
  public function setSpring(?frequency:Float):Void;
}