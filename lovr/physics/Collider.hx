package lovr.physics;

@:native("lovr.physics.Collider")
extern class Collider {
  public function getAABB():Float;
  public function getAngularDamping():Float;
  public function getAngularVelocity():Float;
  public function getAutomaticMass():Bool;
  public function getCenterOfMass():Float;
  public function getDegreesOfFreedom():String;
  public function getFriction():Float;
  public function getGravityScale():Float;
  public function getInertia():Float;
  public function getJoints():Dynamic;
  public function getLinearDamping():Float;
  public function getLinearVelocity():Float;
  public function getLinearVelocityFromLocalPoint():Float;
  public function getLinearVelocityFromWorldPoint():Float;
  public function getLocalPoint():Float;
  public function getLocalVector():Float;
  public function getMass():Float;
  public function getOrientation():Float;
  public function getPose():Float;
  public function getPosition():Float;
  public function getRestitution():Float;
  public function getShape():lovr.physics.Shape;
  public function getShapes():Dynamic;
  public function getTag():String;
  public function getUserData():Dynamic;
  public function getWorld():lovr.physics.World;
  public function getWorldPoint():Float;
  public function getWorldVector():Float;
  public function isAwake():Bool;
  public function isContinuous():Bool;
  public function isDestroyed():Bool;
  public function isEnabled():Bool;
  public function isGravityIgnored():Bool;
  public function isKinematic():Bool;
  public function isSensor():Bool;
  public function isSleepingAllowed():Bool;
}