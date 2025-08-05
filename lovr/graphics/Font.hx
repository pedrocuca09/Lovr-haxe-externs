package lovr.graphics;

@:native("lovr.graphics.Font")
extern class Font {
  public function getAscent():Float;
  public function getDescent():Float;
  public function getHeight():Float;
  public function getKerning():Float;
  public function getLines():Dynamic;
  public function getLineSpacing():Float;
  public function getPixelDensity():Float;
  public function getRasterizer():lovr.data.Rasterizer;
  public function getVertices():Dynamic;
  public function getWidth():Float;
}