package lovr.graphics;

import haxe.extern.EitherType;

/**
 * Represents a texture sampler.
 * https://lovr.org/docs/Sampler
 */
extern class Sampler {
  public function setFilter(filter:String):Void;
  public function getFilter():String;
  public function setWrap(wrap:String):Void;
  public function getWrap():String;
  public function setAnisotropy(level:Float):Void;
  public function getAnisotropy():Float;
} 