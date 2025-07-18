package lovr.filesystem;

import haxe.extern.EitherType;
import lovr.filesystem.File;

/**
 * Filesystem module for file and directory operations.
 * https://lovr.org/docs/lovr.filesystem
 */
extern class Filesystem {
  static function exists(path:String):Bool;
  static function getSize(path:String):Int;
  static function read(path:String):String;
  static function write(path:String, data:String):Void;
  static function newFile(path:String):File;
  static function append(filename:String, content:String):Int;
  static function createDirectory(path:String):Bool;
  static function getAppdataDirectory():String;
  static function getDirectoryItems(path:String):Array<String>;
  static function getExecutablePath():String;
  static function getIdentity():String;
  static function getLastModified(path:String):Float;
  static function getRealDirectory(path:String):String;
  static function getRequirePath():String;
  static function getSaveDirectory():String;
  static function getSource():String;
  static function getUserDirectory():String;
  static function getWorkingDirectory():String;
  static function isDirectory(path:String):Bool;
  static function isFile(path:String):Bool;
  static function isFused():Bool;
  static function load(filename:String):Dynamic;
  static function mount(path:String, mountpoint:String, ?append:Bool, ?root:String):Bool;
  static function remove(path:String):Bool;
  static function setIdentity(identity:String):Void;
  static function setRequirePath(path:String):Void;
  static function setSource(identity:String):Void;
  static function unmount(path:String):Bool;
} 