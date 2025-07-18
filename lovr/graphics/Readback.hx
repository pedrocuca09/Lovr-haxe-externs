package lovr.graphics;

/**
 * Represents a GPU readback operation.
 * https://lovr.org/docs/Readback
 */
extern class Readback {
  public function isComplete():Bool;
  public function wait():Bool;
  public function getBlob():Dynamic;
  public function getImage():Dynamic;
} 