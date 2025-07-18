package lovr.graphics;

import haxe.extern.EitherType;

/**
 * Represents a texture on the GPU.
 * https://lovr.org/docs/Texture
 */
extern class Texture {
  public function getWidth(?mipmap:Int):Int;
  public function getHeight(?mipmap:Int):Int;
  public function getFormat():String;
  public function setFilter(mode:String, ?anisotropy:Float):Void;
  public function getFilter():Dynamic;
  public function setWrap(horizontal:String, vertical:String):Void;
  public function getWrap():Dynamic;
  public function setMipmapFilter(filter:String):Void;
  public function getMipmapFilter():String;
  public function setAnisotropy(level:Float):Void;
  public function getAnisotropy():Float;
  public function getType():String;
  public function getDepth():Int;
  public function getMipmapCount():Int;
  public function replacePixels(image:Dynamic, ?x:Float, ?y:Float, ?slice:Float, ?mipmap:Float):Void;
  public function getDimensions(?mipmaps:Float):Array<Int>;
  public function getCompareMode():String;
  public function setCompareMode(mode:String):Void;
} 