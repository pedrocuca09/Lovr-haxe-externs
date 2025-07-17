package lovr.filesystem;

/**
 * Represents a file in the virtual filesystem.
 * https://lovr.org/docs/File
 */
extern class File {
  /**
   * Gets the name of the file.
   */
  public function getName():String;

  /**
   * Gets the size of the file in bytes.
   */
  public function getSize():Int;

  /**
   * Reads the contents of the file.
   */
  public function read():String;

  /**
   * Writes data to the file.
   */
  public function write(data:String):Void;

     
} 