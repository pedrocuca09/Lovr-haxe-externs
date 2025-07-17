package lovr.timer;

/**
 * Timer module for time and framerate management.
 * https://lovr.org/docs/lovr.timer
 */
 @:native("lovr.timer")
extern class Timer {
  /**
   * Gets the time since the last frame, in seconds.
   */
  static function getDelta():Float;

  /**
   * Gets the average delta time over the last second.
   */
  static function getAverageDelta():Float;

  /**
   * Gets the current frames per second.
   */
  static function getFPS():Int;

  /**
   * Gets the time since the application started, in seconds.
   */
  static function getTime():Float;

  /**
   * Advances the timer and returns the new delta time.
   */
  static function step():Float;

  /**
   * Sleeps for a given number of seconds.
   */
  static function sleep(seconds:Float):Void;
} 