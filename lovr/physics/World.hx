package lovr.physics;

@:native("lovr.physics.World")
extern class World {
  public function getAngularDamping():Float;
  public function getCallbacks():Dynamic;
  public function getColliderCount():Float;
  public function getColliders():Dynamic;
  public function getGravity():Float;
  public function getJointCount():Float;
  public function getJoints():Dynamic;
  public function getLinearDamping():Float;
  public function getResponseTime():Float;
  public function getStepCount():Float;
  public function getTags():Dynamic;
  public function getTightness():Float;
  public function isCollisionEnabledBetween():Bool;
  public function isDestroyed():Bool;
  public function isSleepingAllowed():Bool;
  public function newBoxCollider():lovr.physics.Collider;
  public function newCapsuleCollider():lovr.physics.Collider;
  public function newCollider():lovr.physics.Collider;
  public function newConvexCollider():lovr.physics.Collider;
  public function newCylinderCollider():lovr.physics.Collider;
  public function newMeshCollider():lovr.physics.Collider;
  public function newSphereCollider():lovr.physics.Collider;
  public function overlapShape():lovr.physics.Collider;
  public function queryBox():lovr.physics.Collider;
  public function querySphere():lovr.physics.Collider;
}