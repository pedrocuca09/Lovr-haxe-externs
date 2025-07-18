package lovr.graphics;

import haxe.extern.EitherType;

/**
 * Represents a material for rendering.
 * https://lovr.org/docs/Material
 */
extern class Material {
  public function setColor(r:Float, g:Float, b:Float, ?a:Float):Void;
  public function getColor():Array<Float>;
  public function setTexture(texture:Texture):Void;
  public function getTexture():Texture;
  public function setScalar(name:String, value:Float):Void;
  public function getScalar(name:String):Float;
  public function setTransform(ox:Float, oy:Float, sx:Float, sy:Float, angle:Float):Void;
  public function getTransform():Dynamic;
} 