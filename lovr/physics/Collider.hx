package lovr.physics;

/**
 * Represents a physics collider.
 * https://lovr.org/docs/Collider
 */
extern class Collider {
  /**
   * Gets the position of the collider.
   */
  public function getPosition():Array<Float>;

  /**
   * Sets the position of the collider.
   */
  public function setPosition(x:Float, y:Float, z:Float):Void;

     
} 