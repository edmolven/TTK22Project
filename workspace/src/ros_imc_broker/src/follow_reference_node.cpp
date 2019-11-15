//***************************************************************************
// Copyright 2016 OceanScan - Marine Systems & Technology, Lda.             *
//***************************************************************************
// Licensed under the Apache License, Version 2.0 (the "License");          *
// you may not use this file except in compliance with the License.         *
// You may obtain a copy of the License at                                  *
//                                                                          *
// http://www.apache.org/licenses/LICENSE-2.0                               *
//                                                                          *
// Unless required by applicable law or agreed to in writing, software      *
// distributed under the License is distributed on an "AS IS" BASIS,        *
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. *
// See the License for the specific language governing permissions and      *
// limitations under the License.                                           *
//***************************************************************************
// Author: Ricardo Martins                                                  *
//***************************************************************************

// ROS headers.
#include <ros/ros.h>
#include <ros/callback_queue.h>
#include "std_msgs/Float64MultiArray.h"
#include "custom_msgs/NorthEastHeading.h"

// Local headers.
#include <ros_imc_broker/FollowReferenceController.hpp>


class readyForWaypoint
{
  public:

    bool readyToSendBool;  
    ros::NodeHandle n;

    void guidanceWaypointCallback(const custom_msgs::NorthEastHeading::ConstPtr& msg)
    {
      ROS_INFO("NORTH: %f | EAST: %f | HEADING. %f", msg->north, msg->east, msg->heading);
      float north_meters = msg->north;
      float east_meters = msg->east;

      readyToSendBool = true;

      ros_imc_broker::FollowReferenceController ctl(n, "lauv-simulator-1");

      // 50x50 m square.
      // A.
      ctl.addReference(initial_lat+north_meters/earth_radius, initial_lon+east_meters/earth_radius, -1.0, 5.0);
      
      // B.
      //ctl.addReference(0.7188026474200668, -0.15196319997726826, -2.0, 1.0);
      // C.
      //ctl.addReference(0.7188026474200668, -0.15197361959290270, -3.0, 1.0);
      // D.
      //ctl.addReference(0.7188105014017008, -0.15197361959290270, -4.0, 1.0);
      // A.
      //ctl.addReference(0.7188105014017008, -0.15196319997726826, -5.0, 1.0);


      while (ros::ok())
      {

        if(readyToSendBool){
          ros::getGlobalCallbackQueue()->callAvailable(ros::WallDuration(1.0));
          ctl.updateStateMachine();
        }
      }
    }
  private:
    const float initial_lat = 0.7188138944;
    const float initial_lon = -0.1519518513;
    const float earth_radius = 6371000;
    const float pi = 3.14159265359;

};



int
main(int argc, char** argv)
{
  ros::init(argc, argv, "follow_reference_node", ros::init_options::AnonymousName);

  ros::NodeHandle nh;

  //Create object in order to give waypoints and start plan when they come in
  readyForWaypoint readyObj;
  readyObj.n = nh;
  readyObj.readyToSendBool = false;
  ros::Subscriber sub = nh.subscribe("guidance/waypoint", 1000,&readyForWaypoint::guidanceWaypointCallback,&readyObj);
  

  ros::spin();

  ROS_INFO("AFTER ROS SPIN RUNNING");
  while (ros::ok())
  {

    if(readyObj.readyToSendBool){
      ROS_INFO("READY TO SED BOOL ACTIVATED");
      ros::getGlobalCallbackQueue()->callAvailable(ros::WallDuration(1.0));
      //ctl.updateStateMachine();
    }
  }

  return 0;
}
