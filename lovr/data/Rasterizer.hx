package lovr.data;

import haxe.extern.EitherType;

/**
 * Represents a font rasterizer.
 * https://lovr.org/docs/Rasterizer
 */
extern class Rasterizer {
  public function getWidth():Int;
  public function getHeight():Int;
  public function getGlyphCount():Int;
  public function getGlyphData(glyph:Int):Dynamic;
  public function getAdvance(glyph:Int):Float;
  public function getAscent():Float;
  public function getDescent():Float;
  public function getLineHeight():Float;
  public function setLineHeight(height:Float):Void;
} 