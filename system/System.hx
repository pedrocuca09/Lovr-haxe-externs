package lovr.system;

/**
 * System module for OS and window management.
 * https://lovr.org/docs/lovr.system
 */
extern class System {
  /**
   * Gets the name of the operating system.
   */
  static function getOS():String;

  /**
   * Gets the number of CPU cores.
   */
  static function getCoreCount():Int;

     
} 