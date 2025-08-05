package lovr;

@:native("lovr")
extern class Lovr {
  // Callbacks
  static public var load:Void->Void;
  static public var update:Float->Void;
  static public var draw:lovr.graphics.Pass->Void;
  static public var quit:Void->Void;
  static public var focus:Bool->Void;
  static public var keypressed:String->Void;
  static public var keyreleased:String->Void;
  static public var textinput:String->Void;
  static public var mousepressed:String->Void;
  static public var mousereleased:String->Void;
  static public var mousemoved:Float->Float->Void;
  static public var wheelmoved:Float->Float->Void;
  static public var gamepadpressed:Int->String->Void;
  static public var gamepadreleased:Int->String->Void;
  static public var gamepadaxis:Int->String->Float->Void;
  static public var error:String->Void;
  
  // Version
  static public function getVersion():String;
}