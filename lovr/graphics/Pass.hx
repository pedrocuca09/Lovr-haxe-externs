package lovr.graphics;

extern class Pass {
  /**
   * Draws text in the 3D world.
   */
  public function text(text:String, x:Float, y:Float, z:Float, scale:Float, ?angle:Float, ?ax:Float, ?ay:Float, ?az:Float):Void;

  /**
   * Translates the drawing origin.
   */
  public function translate(x:Float, y:Float, z:Float):Void;

  /**
   * Rotates the drawing origin.
   */
  public function rotate(angle:Float, ax:Float, ay:Float, az:Float):Void;

  /**
   * Draws a cube at the given position and size. All arguments are optional.
   *   cube(x:Float, y:Float, z:Float, size:Float):Void
   *   cube():Void
   */
  public function cube(?x:Float, ?y:Float, ?z:Float, ?size:Float):Void;
} 