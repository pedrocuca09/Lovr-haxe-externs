package lovr.audio;

/**
 * Represents an audio source (sound or stream).
 * https://lovr.org/docs/Source
 */
extern class Source {
  /**
   * Plays the Source.
   */
  public function play():Void;

  /**
   * Pauses the Source.
   */
  public function pause():Void;

  /**
   * Stops the Source.
   */
  public function stop():Void;

  /**
   * Rewinds the Source to the beginning.
   */
  public function rewind():Void;

  /**
   * Returns whether the Source is playing.
   */
  public function isPlaying():Bool;

  /**
   * Sets the volume of the Source.
   */
  public function setVolume(volume:Float):Void;

  /**
   * Gets the volume of the Source.
   */
  public function getVolume():Float;

  /**
   * Sets the pitch of the Source.
   */
  public function setPitch(pitch:Float):Void;

  /**
   * Gets the pitch of the Source.
   */
  public function getPitch():Float;

  /**
   * Sets the position of the Source.
   */
  public function setPosition(x:Float, y:Float, z:Float):Void;

  /**
   * Gets the position of the Source.
   */
  public function getPosition():Array<Float>;

  /**
   * Sets whether the Source should loop.
   */
  public function setLooping(looping:Bool):Void;

  /**
   * Returns whether the Source is looping.
   */
  public function isLooping():Bool;

     
} 