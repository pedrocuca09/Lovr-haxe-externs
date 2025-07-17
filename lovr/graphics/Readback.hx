package lovr.graphics;

/**
 * Represents a GPU readback operation.
 * https://lovr.org/docs/Readback
 */
extern class Readback {
  /**
   * Returns whether the readback is complete.
   */
  public function isComplete():Bool;

  /**
   * Waits for the readback to complete.
   */
  public function wait():Bool;

     
} 