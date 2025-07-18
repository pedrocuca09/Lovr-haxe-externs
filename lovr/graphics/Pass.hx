package lovr.graphics;

import haxe.extern.EitherType;

/**
 * Represents a drawing pass for rendering.
 * https://lovr.org/docs/Pass
 */
extern class Pass {
  public function text(text:String, x:Float, y:Float, z:Float, scale:Float, ?angle:Float, ?ax:Float, ?ay:Float, ?az:Float):Void;
  public function translate(x:Float, y:Float, z:Float):Void;
  public function rotate(angle:Float, ax:Float, ay:Float, az:Float):Void;
  public function scale(x:Float, y:Float, z:Float):Void;
  public function transform(matrix:Dynamic):Void;
  public function origin():Void;
  public function push():Void;
  public function pop():Void;
  public function cube(?x:Float, ?y:Float, ?z:Float, ?size:Float):Void;
  public function sphere(x:Float, y:Float, z:Float, radius:Float):Void;
  public function box(x:Float, y:Float, z:Float, width:Float, height:Float, depth:Float):Void;
  public function plane(x:Float, y:Float, z:Float, width:Float, height:Float):Void;
  public function circle(x:Float, y:Float, z:Float, radius:Float):Void;
  public function line(x1:Float, y1:Float, z1:Float, x2:Float, y2:Float, z2:Float):Void;
  public function points(points:Array<Float>):Void;
  public function polygon(points:Array<Float>):Void;
  public function roundrect(x:Float, y:Float, z:Float, width:Float, height:Float, radius:Float):Void;
  public function capsule(x:Float, y:Float, z:Float, radius:Float, length:Float):Void;
  public function cone(x:Float, y:Float, z:Float, radius:Float, length:Float):Void;
  public function cylinder(x:Float, y:Float, z:Float, radius:Float, length:Float):Void;
  public function torus(x:Float, y:Float, z:Float, radius:Float, tubeRadius:Float):Void;
  public function setColor(r:Float, g:Float, b:Float, ?a:Float):Void;
  public function getColor():Array<Float>;
  public function setMaterial(material:Material):Void;
  public function getMaterial():Material;
  public function setFont(font:Font):Void;
  public function getFont():Font;
  public function setShader(shader:Shader):Void;
  public function getShader():Shader;
  public function setDepthTest(compareMode:String, write:Bool):Void;
  public function getDepthTest():Dynamic;
  public function setBlendMode(blend:String, ?alphaBlend:String):Void;
  public function getBlendMode():Dynamic;
  public function setWireframe(wireframe:Bool):Void;
  public function isWireframe():Bool;
  public function setWinding(winding:String):Void;
  public function getWinding():String;
  public function setColorMask(r:Bool, g:Bool, b:Bool, a:Bool):Void;
  public function getColorMask():Dynamic;
  public function setAlphaSampling(enabled:Bool):Void;
  public function getAlphaSampling():Bool;
  public function setLineWidth(width:Float):Void;
  public function getLineWidth():Float;
  public function setPointSize(size:Float):Void;
  public function getPointSize():Float;
  public function setCanvas(canvas:Dynamic):Void;
  public function getCanvas():Dynamic;
  public function setProjection(view:Int, matrix:Dynamic):Void;
  public function getProjection(view:Int, ?matrix:Dynamic):Dynamic;
  public function setViewPose(index:Int, matrix:Dynamic):Void;
  public function getViewPose(index:Int, ?matrix:Dynamic, ?invert:Bool):Dynamic;
  public function flush():Void;
  public function tick(label:String):Void;
  public function tock(label:String):Float;
  public function getDimensions():Array<Int>;
  public function getWidth():Int;
  public function getHeight():Int;
  public function getViewCount():Int;
  public function getViewAngles(view:Int):Dynamic;
} 