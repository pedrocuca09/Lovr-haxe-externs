package lovr.data;

import haxe.extern.EitherType;

/**
 * Represents a sound loaded from a file or memory.
 * https://lovr.org/docs/Sound
 */
extern class Sound {
  public function getChannelCount():Int;
  public function getSampleRate():Int;
  public function getDuration():Float;
  public function getBitDepth():Int;
  public function getData():Dynamic;
  public function setData(data:Dynamic):Void;
} 