package lovr.data;

import haxe.extern.EitherType;

/**
 * Represents an image loaded from a file or memory.
 * https://lovr.org/docs/Image
 */
extern class Image {
  public function getWidth():Int;
  public function getHeight():Int;
  public function getFormat():String;
  public function getDimensions():Array<Int>;
  public function getPixel(x:Int, y:Int):Array<Int>;
  public function setPixel(x:Int, y:Int, color:Array<Int>):Void;
} 