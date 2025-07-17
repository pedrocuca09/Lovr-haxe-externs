package lovr.headset;

/**
 * Headset module for VR/AR device access.
 * https://lovr.org/docs/lovr.headset
 */
extern class Headset {
  /**
   * Returns whether a headset is present.
   */
  static function isPresent():Bool;

  /**
   * Gets the type of headset driver in use.
   */
  static function getDriver():String;

  /**
   * Gets the position of the headset.
   */
  static function getPosition():Array<Float>;

  /**
   * Gets the orientation of the headset.
   */
  static function getOrientation():Array<Float>;

     
} 