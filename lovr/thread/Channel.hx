package lovr.thread;

@:native("lovr.thread.Channel")
extern class Channel {
  public function getCount():Float;
  public function hasRead():Bool;
  public function peek():Dynamic;
  public function pop(?wait:Float):Dynamic;
  public function push():Float;
}