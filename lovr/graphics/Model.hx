package lovr.graphics;

import haxe.extern.EitherType;

/**
 * Represents a 3D model.
 * https://lovr.org/docs/Model
 */
extern class Model {
  public function getMeshCount():Int;
  public function getMaterialCount():Int;
  public function getMesh(index:Int):Dynamic;
  public function getMaterial(index:Int):Dynamic;
  public function draw(?x:Float, ?y:Float, ?z:Float, ?scale:Float, ?angle:Float, ?ax:Float, ?ay:Float, ?az:Float, ?instances:Int):Void;
  public function animate(name_or_index:EitherType<Int, String>, time:Float, ?alpha:Float):Void;
  public function getAnimationCount():Int;
  public function getAnimationName(index:Int):String;
  public function getAABB():Dynamic;
} 