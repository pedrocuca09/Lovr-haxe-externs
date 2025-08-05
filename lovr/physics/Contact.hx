package lovr.physics;

@:native("lovr.physics.Contact")
extern class Contact {
  public function getColliders():lovr.physics.Collider;
  public function getFriction():Float;
  public function getNormal():Float;
  public function getOverlap():Float;
  public function getRestitution():Float;
  public function getShapes():lovr.physics.Shape;
  public function getSurfaceVelocity():Float;
  public function isEnabled():Bool;
}