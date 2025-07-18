package lovr.data;

import haxe.extern.EitherType;

/**
 * Represents a chunk of binary data.
 * https://lovr.org/docs/Blob
 */
extern class Blob {
  public function getName():String;
  public function getSize():Int;
  public function getString():String;
  public function getPointer():Dynamic;
  public function getI8(offset:Int):Int;
  public function getU8(offset:Int):Int;
  public function getI16(offset:Int):Int;
  public function getU16(offset:Int):Int;
  public function getI32(offset:Int):Int;
  public function getU32(offset:Int):Int;
  public function getF32(offset:Int):Float;
  public function getF64(offset:Int):Float;
  public function setI8(offset:Int, value:Int):Void;
  public function setU8(offset:Int, value:Int):Void;
  public function setI16(offset:Int, value:Int):Void;
  public function setU16(offset:Int, value:Int):Void;
  public function setI32(offset:Int, value:Int):Void;
  public function setU32(offset:Int, value:Int):Void;
  public function setF32(offset:Int, value:Float):Void;
  public function setF64(offset:Int, value:Float):Void;
} 