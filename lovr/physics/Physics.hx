package lovr.physics;

import lovr.physics.World;
import lovr.physics.Collider;
import lovr.physics.Contact;
import lovr.physics.BoxShape;
import lovr.physics.SphereShape;
import lovr.physics.CapsuleShape;
import lovr.physics.CylinderShape;
import lovr.physics.ConvexShape;
import lovr.physics.MeshShape;
import lovr.physics.TerrainShape;
import lovr.physics.WeldJoint;
import lovr.physics.BallJoint;
import lovr.physics.ConeJoint;
import lovr.physics.DistanceJoint;
import lovr.physics.HingeJoint;
import lovr.physics.SliderJoint;

/**
 * Physics module for simulation and collision.
 * https://lovr.org/docs/lovr.physics
 */
extern class Physics {
  /**
   * Creates a new World.
   */
  static function newWorld():World;

     
} 