package lovr.graphics;

import haxe.extern.EitherType;

/**
 * Represents a GPU buffer.
 * https://lovr.org/docs/Buffer
 */
extern class Buffer {
  public function getSize():Int;
  public function setData(data:Dynamic):Void;
  public function getData():Dynamic;
  public function copyTo(target:Buffer, ?srcOffset:Int, ?dstOffset:Int, ?size:Int):Void;
  public function clear(?offset:Int, ?size:Int, ?value:Int):Void;
} 