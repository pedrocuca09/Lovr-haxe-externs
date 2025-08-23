package lovr.data;

@:native("lovr.data")
extern class Data {
public function AnimationProperty():Void;
public function AttributeType():Void;
public function ChannelLayout():Void;
public function DefaultAttribute():Void;
public function ModelDrawMode():Void;
public function newBlob():lovr.data.Blob;
public function newImage():lovr.data.Image;
public function newModelData():lovr.data.ModelData;
public function newRasterizer():lovr.data.Rasterizer;
public function newSound():lovr.data.Sound;
public function SampleFormat():Void;
public function SmoothMode():Void;
public function TextureFormat():Void;
  public function dataNewBlob(arg0:Dynamic):Void;
  public function dataNewImage(arg0:Dynamic):Void;
  public function dataNewModelData(arg0:Dynamic):Void;
  public function dataNewRasterizer(arg0:Dynamic):Void;
  public function dataNewSound(arg0:Dynamic):Void;
}