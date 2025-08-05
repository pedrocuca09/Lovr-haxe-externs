package lovr.physics;

@:native("lovr.physics")
extern class Physics {
  public function newBallJoint():Dynamic;
  public function newBoxShape(?width:Float):Dynamic;
  public function newCapsuleShape(?radius:Float):Dynamic;
  public function newConeJoint():Dynamic;
  public function newConvexShape():Dynamic;
  public function newCylinderShape(?radius:Float):Dynamic;
  public function newDistanceJoint():Dynamic;
  public function newHingeJoint():Dynamic;
  public function newMeshShape():Dynamic;
  public function newSliderJoint():Dynamic;
  public function newSphereShape(?radius:Float):Dynamic;
  public function newWeldJoint():Dynamic;
  public function newWorld():lovr.physics.World;
  public function physicsNewWorld(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewBoxShape(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewSphereShape(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewCapsuleShape(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewCylinderShape(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewConvexShape(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewMeshShape(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewTerrainShape(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewWeldJoint(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewBallJoint(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewConeJoint(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewDistanceJoint(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewHingeJoint(arg0:Dynamic, arg1:Dynamic):Dynamic;
  public function physicsNewSliderJoint(arg0:Dynamic, arg1:Dynamic):Dynamic;
}