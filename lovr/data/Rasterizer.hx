package lovr.data;

@:native("lovr.data.Rasterizer")
extern class Rasterizer {
  public function getAdvance():Float;
  public function getAscent():Float;
  public function getBearing():Float;
  public function getBoundingBox():Float;
  public function getCurves():Dynamic;
  public function getDescent():Float;
  public function getDimensions():Float;
  public function getFontSize():Float;
  public function getGlyphCount():Float;
  public function getHeight():Float;
  public function getKerning():Float;
  public function getLeading():Float;
  public function getWidth():Float;
  public function hasGlyphs():Bool;
  public function newImage():lovr.data.Image;
}