package lovr.filesystem;

import haxe.extern.EitherType;

/**
 * Represents a file in the virtual filesystem.
 * https://lovr.org/docs/File
 */
extern class File {
  public function getName():String;
  public function getSize():Int;
  public function read():String;
  public function write(data:String):Void;
  public function open(mode:String):Bool;
  public function close():Void;
  public function isOpen():Bool;
  public function getMode():String;
  public function flush():Void;
  public function setBuffer(mode:String, ?size:Int):Void;
  public function getBuffer():String;
  public function seek(whence:String, offset:Int):Int;
  public function tell():Int;
} 