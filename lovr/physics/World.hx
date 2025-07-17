package lovr.physics;

/**
 * Represents a physics simulation world.
 * https://lovr.org/docs/World
 */
extern class World {
  /**
   * Updates the physics simulation.
   */
  public function update(dt:Float):Void;

  /**
   * Gets the number of colliders in the world.
   */
  public function getColliderCount():Int;

     
} 