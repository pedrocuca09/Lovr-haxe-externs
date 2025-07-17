package lovr.thread;

import lovr.thread.Channel;

/**
 * Thread module for multithreading and communication.
 * https://lovr.org/docs/lovr.thread
 */
extern class Thread {
  /**
   * Creates a new thread from a file or string.
   */
  static function newThread(source:String):Thread;

  /**
   * Creates a new channel for communication.
   */
  static function newChannel():Channel;

  /**
   * Gets a named channel.
   */
  static function getChannel(name:String):Channel;

     
} 