package lovr.physics;

@:native("lovr.physics.Joint")
extern class Joint {
  public function getAnchors():Float;
  public function getColliders():lovr.physics.Collider;
  public function getForce():Float;
  public function getPriority():Float;
  public function getTorque():Float;
  public function getType():Dynamic;
  public function getUserData():Dynamic;
  public function isDestroyed():Bool;
  public function isEnabled():Bool;
}