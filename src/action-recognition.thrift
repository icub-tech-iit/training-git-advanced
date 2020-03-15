/******************************************************************************
 *                                                                            *
 * Copyright (C) 2018 Fondazione Istituto Italiano di Tecnologia (IIT)        *
 * All Rights Reserved.                                                       *
 *                                                                            *
 ******************************************************************************/

/**
 * @file idl.thrift
 * @authors: Valentina Vasco <valentina.vasco@iit.it>
 */

struct Matrix { }
(
   yarp.name="yarp::sig::Matrix"
   yarp.includefile="yarp/sig/Matrix.h"
)

/**
 * actionRecognizer_IDL
 *
 * IDL Interface to Action Recognizer services.
 */
service actionRecognizer_IDL
{
   /**
    * Start the interaction.
    * @param number of frames used to train the model
    * @return true/false on success/failure.
    */
   bool run(1:i32 nframes_);

   /**
    * Start the interaction.
    * @param tag of the current skeleton
    * @return true/false on success/failure.
    */
   bool tags(1:string skel_tag_);
}
