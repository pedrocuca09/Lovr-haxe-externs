package lovr.event;

/**
 * Event module for pushing and polling events.
 * https://lovr.org/docs/lovr.event
 */
extern class Event {
  /**
   * Clears all queued events.
   */
  static function clear():Void;

  /**
   * Polls for the next event.
   * Returns the event name and arguments, or null if no events are queued.
   */
  static function poll():Null<Array<Dynamic>>;

  /**
   * Pushes a new event onto the event queue.
   */
  static function push(name:String, ...args:Dynamic):Void;

  /**
   * Quits the application.
   */
  static function quit():Void;

  /**
   * Restarts the application.
   */
  static function restart():Void;
} 