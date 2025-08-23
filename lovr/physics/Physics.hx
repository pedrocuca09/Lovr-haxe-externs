package lovr.physics;

@:native("lovr.physics")
extern class Physics {
public function JointType():Void;
public function MotorMode():Void;
public function newBallJoint():Dynamic;
public function newBoxShape():Dynamic;
public function newCapsuleShape():Dynamic;
public function newConeJoint():Dynamic;
public function newConvexShape():Dynamic;
public function newCylinderShape():Dynamic;
public function newDistanceJoint():Dynamic;
public function newHingeJoint():Dynamic;
public function newMeshShape():Dynamic;
public function newSliderJoint():Dynamic;
public function newSphereShape():Dynamic;
public function newTerrainShape():Void;
public function newWeldJoint():Dynamic;
public function newWorld(tags:Dynamic):lovr.physics.World;
public function ShapeType():Void;
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