package lovr.audio;

@:native("lovr.audio")
extern class Audio {
public function AudioMaterial():Void;
public function AudioShareMode():Void;
public function AudioType():Void;
public function Effect():Void;
public function getAbsorption():Float;
public function getDevice():String;
public function getDevices():Dynamic;
public function getOrientation():Float;
public function getPose():Float;
public function getPosition():Float;
public function getSampleRate():Float;
public function getSpatializer():String;
public function getVolume():Float;
public function isStarted():Bool;
public function newSource():Dynamic;
public function setAbsorption():Void;
public function setDevice():Bool;
public function setGeometry():Bool;
public function setOrientation():Void;
public function setPose():Void;
public function setPosition():Void;
public function setVolume():Void;
public function start():Bool;
public function stop():Bool;
public function TimeUnit():Void;
public function VolumeUnit():Void;
  public function audioGetDevice(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioStart(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioStop(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioIsStarted(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioGetVolume(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioSetVolume(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioGetPosition(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioSetPosition(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioGetOrientation(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioSetOrientation(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioSetGeometry(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioGetAbsorption(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioSetAbsorption(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
  public function audioNewSource(arg0:Dynamic, arg1:Dynamic, arg2:Dynamic):String;
}