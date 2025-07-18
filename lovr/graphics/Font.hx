package lovr.graphics;

import haxe.extern.EitherType;

/**
 * Represents a font for rendering text.
 * https://lovr.org/docs/Font
 */
extern class Font {
  public function getPixelDensity():Float;
  public function setPixelDensity(pixelDensity:Float):Void;
  public function getWidth(text:String, ?wrap:Float):Dynamic;
  public function getHeight():Float;
  public function getLineHeight():Float;
  public function setLineHeight(height:Float):Void;
  public function getAscent():Float;
  public function getDescent():Float;
  public function getBaseline():Float;
  public function hasGlyphs(glyphs:EitherType<String, Array<String>>):Bool;
  public function getRasterizer():Dynamic;
} 