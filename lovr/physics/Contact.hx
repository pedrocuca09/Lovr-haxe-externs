package lovr.physics;

import haxe.extern.EitherType;

/**
 * Represents a contact between two colliders.
 * https://lovr.org/docs/Contact
 */
extern class Contact {
  public function getPosition():Array<Float>;
  public function getColliders():Array<Collider>;
  public function getFriction():Float;
  public function setFriction(friction:Float):Void;
  public function getRestitution():Float;
  public function setRestitution(restitution:Float):Void;
  public function isTouching():Bool;
} 