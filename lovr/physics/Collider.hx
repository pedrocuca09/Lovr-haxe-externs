package lovr.physics;

import haxe.extern.EitherType;

/**
 * Represents a physics collider.
 * https://lovr.org/docs/Collider
 */
extern class Collider {
  public function getPosition():Array<Float>;
  public function setPosition(x:Float, y:Float, z:Float):Void;
  public function getWorld():World;
  public function getShapes():Array<Dynamic>;
  public function getOrientation():Array<Float>;
  public function setOrientation(x:Float, y:Float, z:Float, w:Float):Void;
  public function getLinearVelocity():Array<Float>;
  public function setLinearVelocity(x:Float, y:Float, z:Float):Void;
  public function getAngularVelocity():Array<Float>;
  public function setAngularVelocity(x:Float, y:Float, z:Float):Void;
  public function applyForce(x:Float, y:Float, z:Float):Void;
  public function applyTorque(x:Float, y:Float, z:Float):Void;
  public function getMass():Float;
  public function setMass(mass:Float):Void;
  public function getRestitution():Float;
  public function setRestitution(restitution:Float):Void;
  public function getFriction():Float;
  public function setFriction(friction:Float):Void;
  public function isKinematic():Bool;
  public function setKinematic(kinematic:Bool):Void;
  public function isAwake():Bool;
  public function setAwake(awake:Bool):Void;
  public function destroy():Void;
} 