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
}
