/******************************************************************************
 *                                                                            *
 * Copyright (C) 2019 Fondazione Istituto Italiano di Tecnologia (IIT)        *
 * All Rights Reserved.                                                       *
 *                                                                            *
 ******************************************************************************/

/**
 * @file idl.thrift
 * @authors: Ugo Pattacini <ugo.pattacini@iit.it>
 */

struct Property { }
(
   yarp.name="yarp::os::Property"
   yarp.includefile="yarp/os/Property.h"
)

/**
 * navController_IDL
 *
 * IDL Interface to Navigation Controller services.
 */
service navController_IDL
{
   /**
    * Stop navigation.
    * @return true/false on success/failure.
    */
   bool stop();

   /**
    * Reset odometry.
    * @param x_0 can optionally become the current x-coordinate (meters).
    * @param y_0 can optionally become the current y-coordinate (meters).
    * @param theta_0 can optionally become the current theta-coordinate (degrees).
    * @return true/false on success/failure.
    */
   bool reset_odometry(1:double x_0 = 0.0, 2:double y_0 = 0.0, 3:double theta_0 = 0.0);

   /**
    * Query which skeleton is currently under control.
    * @return the name of the skeleton; empty otherwise.
    */
   string which_skeleton();

   /**
    * Retrieve internal state.
    * @return a property-like object containing the state
    *         in the form (robot-state {idle|track|nav}) (robot-location (x y theta))
    *         (robot-velocity (v_x v_theta)) [(target-location (x y theta heading))]
    *         [(skeleton-tag tag) (skeleton-location (x y))].
    */
   Property get_state();
}
