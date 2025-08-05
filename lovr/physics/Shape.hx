package lovr.physics;

@:native("lovr.physics.Shape")
extern class Shape {
  public function containsPoint():Bool;
  public function getAABB():Float;
  public function getCenterOfMass():Float;
  public function getCollider():lovr.physics.Collider;
  public function getDensity():Float;
  public function getInertia():Float;
  public function getMass():Float;
  public function getOffset():Float;
  public function getOrientation():Float;
  public function getPose():Float;
  public function getPosition():Float;
  public function getType():Dynamic;
  public function getUserData():Dynamic;
  public function getVolume():Float;
  public function isDestroyed():Bool;
  public function raycast():Float;
}