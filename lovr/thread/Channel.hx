package lovr.thread;

/**
 * Represents a thread communication channel.
 * https://lovr.org/docs/Channel
 */
extern class Channel {
  /**
   * Pushes a value onto the channel.
   */
  public function push(value:Dynamic):Void;

  /**
   * Pops a value from the channel.
   */
  public function pop():Dynamic;

     
} 