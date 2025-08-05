package lovr.timer;

@:native("lovr.timer")
extern class Timer {
  public function getAverageDelta():Float;
  public function getDelta():Float;
  public function getFPS():Float;
  public function getTime():Float;
  public function step():Float;
  public function timerGetDelta():Float;
  public function timerGetAverageDelta():Float;
  public function timerGetFPS():Float;
  public function timerGetTime():Float;
  public function timerStep():Float;
  public function timerSleep():Float;
}