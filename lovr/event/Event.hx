package lovr.event;

@:native("lovr.event")
extern class Event {
  public function poll():Dynamic;
  public function quit(?code:Float):Void;
  public function eventClear():String;
  public function eventPoll():String;
  public function eventPush():String;
  public function eventQuit():String;
  public function eventRestart():String;
}