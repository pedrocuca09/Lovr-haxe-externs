package lovr;
import lovr.graphics.Pass;

@:native('lovr')
extern class Lovr {
  /**
   * The draw callback, called every frame.
   * @param fn The function to call, receives a Pass.
   */
  static public var draw:Pass->Void;

  /**
   * The keypressed callback, called when a key is pressed.
   * @param fn The function to call, receives the key as a String.
   */
  static public var keypressed:String->Void;
}