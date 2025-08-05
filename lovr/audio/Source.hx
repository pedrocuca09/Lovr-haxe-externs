package lovr.audio;

@:native("lovr.audio.Source")
extern class Source {
  public function clone():Dynamic;
  public function getDirectivity():Float;
  public function getDuration():Float;
  public function getOrientation():Float;
  public function getPitch():Float;
  public function getPose():Float;
  public function getPosition():Float;
  public function getRadius():Float;
  public function getSound():lovr.data.Sound;
  public function getVolume():Float;
  public function isEffectEnabled():Bool;
  public function isLooping():Bool;
  public function isPlaying():Bool;
  public function isSpatial():Bool;
  public function play():Bool;
  public function tell():Float;
}