package lovr.filesystem;

import lovr.filesystem.File;

/**
 * Filesystem module for file and directory operations.
 * https://lovr.org/docs/lovr.filesystem
 */
extern class Filesystem {
  /**
   * Checks if a file or directory exists.
   */
  static function exists(path:String):Bool;

  /**
   * Gets the size of a file.
   */
  static function getSize(path:String):Int;

  /**
   * Reads the contents of a file.
   */
  static function read(path:String):String;

  /**
   * Writes data to a file.
   */
  static function write(path:String, data:String):Void;

  /**
   * Creates a new File object.
   */
  static function newFile(path:String):File;
} 