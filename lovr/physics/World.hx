package lovr.physics;

import haxe.extern.EitherType;

/**
 * Represents a physics simulation world.
 * https://lovr.org/docs/World
 */
extern class World {
  public function update(dt:Float):Void;
  public function getColliderCount():Int;
  public function getColliders():Array<Collider>;
  public function getContacts():Array<Contact>;
  public function step(dt:Float):Void;
  public function getGravity():Array<Float>;
  public function setGravity(x:Float, y:Float, z:Float):Void;
  public function raycast(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float, callback:Dynamic):Void;
  public function setSleepingAllowed(allowed:Bool):Void;
  public function isSleepingAllowed():Bool;
  public function setTightness(tightness:Float):Void;
  public function getTightness():Float;
  public function setResponseTime(responseTime:Float):Void;
  public function getResponseTime():Float;
} 