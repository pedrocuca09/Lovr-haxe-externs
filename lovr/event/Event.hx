package lovr.event;

@:native("lovr.event")
extern class Event {
public function clear():Void;
public function DisplayType():Void;
public function KeyCode():Void;
public function poll():Dynamic;
public function push():Void;
public function quit():Void;
public function restart():Void;
  public function eventClear():String;
  public function eventPoll():String;
  public function eventPush():String;
  public function eventQuit():String;
  public function eventRestart():String;
}