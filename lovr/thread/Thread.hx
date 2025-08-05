package lovr.thread;

@:native("lovr.thread.Thread")
extern class Thread {
  public function getError():String;
  public function isRunning():Bool;
}