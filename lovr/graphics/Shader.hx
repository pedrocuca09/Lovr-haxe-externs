package lovr.graphics;

import haxe.extern.EitherType;

/**
 * Represents a GPU shader.
 * https://lovr.org/docs/Shader
 */
extern class Shader {
  public function send(name:String, value:Dynamic):Void;
  public function hasStage(stage:String):Bool;
  public function getStage(stage:String):String;
  public function hasBlock(block:String):Bool;
  public function hasUniform(uniform:String):Bool;
  public function sendBlock(name:String, block:Dynamic, ?access:String):Void;
  public function sendImage(name:String, texture:Dynamic, ?mipmap:Int, ?layer:Int, ?access:String):Void;
  public function getType():String;
} 