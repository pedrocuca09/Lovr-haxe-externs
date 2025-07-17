package lovr.audio;

import lovr.audio.Source;

/**
 * Audio device info.
 */
typedef AudioDevice = {
  var id:String;
  var name:String;
  var isDefault:Bool;
}

/**
 * Audio module for playback and capture.
 * https://lovr.org/docs/lovr.audio
 */
extern class Audio {
  /**
   * Gets a list of available audio devices.
   */
  static function getDevices():Array<AudioDevice>;

  /**
   * Gets the current audio device.
   */
  static function getDevice():Dynamic;

  /**
   * Sets the current audio device.
   */
  static function setDevice(device:String):Void;

  /**
   * Starts audio playback or capture.
   */
  static function start():Void;

  /**
   * Stops audio playback or capture.
   */
  static function stop():Void;

  /**
   * Returns whether audio is started.
   */
  static function isStarted():Bool;

  /**
   * Gets the master volume.
   */
  static function getVolume():Float;

  /**
   * Sets the master volume.
   */
  static function setVolume(volume:Float):Void;

  /**
   * Gets the listener position.
   */
  static function getPosition():Array<Float>;

  /**
   * Sets the listener position.
   */
  static function setPosition(x:Float, y:Float, z:Float):Void;

  /**
   * Gets the listener orientation.
   */
  static function getOrientation():Array<Float>;

  /**
   * Sets the listener orientation.
   */
  static function setOrientation(angle:Float, ax:Float, ay:Float, az:Float):Void;

  /**
   * Gets the listener pose.
   */
  static function getPose():Array<Float>;

  /**
   * Sets the listener pose.
   */
  static function setPose(x:Float, y:Float, z:Float, angle:Float, ax:Float, ay:Float, az:Float):Void;

  /**
   * Sets the geometry of the audio environment.
   */
  static function setGeometry(geometry:Dynamic):Void;

  /**
   * Gets the current spatializer.
   */
  static function getSpatializer():String;

  /**
   * Gets the sample rate.
   */
  static function getSampleRate():Int;

  /**
   * Gets the absorption value.
   */
  static function getAbsorption():Float;

  /**
   * Sets the absorption value.
   */
  static function setAbsorption(absorption:Float):Void;

  /**
   * Creates a new audio Source.
   */
  static function newSource(blobOrSound:Dynamic, type:String):Source;
} 