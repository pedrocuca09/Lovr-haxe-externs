package lovr.headset;

import haxe.extern.EitherType;

/**
 * Headset module for VR/AR device access.
 * https://lovr.org/docs/lovr.headset
 */
extern class Headset {
  static function isPresent():Bool;
  static function getDriver():String;
  static function getPosition(?device:String):Array<Float>;
  static function getOrientation(?device:String):Array<Float>;
  static function getPose(?device:String):Array<Float>;
  static function getVelocity(?device:String):Array<Float>;
  static function getAngularVelocity(?device:String):Array<Float>;
  static function isDown(device:String, button:String):Bool;
  static function isTouched(device:String, button:String):Bool;
  static function isTracked(?device:String):Bool;
  static function vibrate(device:String, strength:Float, duration:Float):Void;
  static function getDisplayFrequency():Float;
  static function setDisplayFrequency(frequency:Float):Void;
  static function getViewCount():Int;
  static function getViewPose(view:Int):Array<Float>;
  static function getViewAngles(view:Int):Array<Float>;
  static function getDisplayWidth():Int;
  static function getDisplayHeight():Int;
  static function getDisplayDimensions():Array<Int>;
  static function getClipDistance():Array<Float>;
  static function setClipDistance(near:Float, far:Float):Void;
  static function getBoundsWidth():Float;
  static function getBoundsDepth():Float;
  static function getBoundsDimensions():Array<Float>;
  static function getBoundsGeometry():Array<Array<Float>>;
  static function getControllers():Array<String>;
  static function getHands():Array<String>;
  static function getName():String;
  static function getOriginType():String;
  static function renderTo(callback:Dynamic):Void;
} 