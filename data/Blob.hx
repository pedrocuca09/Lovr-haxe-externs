package lovr.data;

/**
 * Represents a chunk of binary data.
 * https://lovr.org/docs/Blob
 */
extern class Blob {
  /**
   * Gets the name of the Blob.
   */
  public function getName():String;

  /**
   * Gets the size of the Blob in bytes.
   */
  public function getSize():Int;

  /**
   * Gets the contents of the Blob as a string.
   */
  public function getString():String;

     
} 