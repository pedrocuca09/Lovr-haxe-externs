package lovr.headset;

@:native("lovr.headset.Layer")
extern class Layer {
  public function getColor():Float;
  public function getCurve():Float;
  public function getDimensions():Float;
  public function getOrientation():Float;
  public function getPass():lovr.graphics.Pass;
  public function getPose():Float;
  public function getPosition():Float;
  public function getTexture():lovr.graphics.Texture;
  public function getViewport():Float;
  public function setCurve(?curve:Float):Void;
}