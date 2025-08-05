package lovr.data;

@:native("lovr.data.Sound")
extern class Sound {
  public function getBlob():lovr.data.Blob;
  public function getByteStride():Float;
  public function getCapacity():Float;
  public function getChannelCount():Float;
  public function getChannelLayout():Dynamic;
  public function getDuration():Float;
  public function getFormat():Dynamic;
  public function getFrameCount():Float;
  public function getFrames():Dynamic;
  public function getSampleCount():Float;
  public function getSampleRate():Float;
  public function isCompressed():Bool;
  public function isStream():Bool;
  public function setFrames():Float;
}