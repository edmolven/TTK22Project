#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64MultiArray.h"
#include "custom_msgs/NorthEastHeading.h"

#include <IMC/Spec/EstimatedState.hpp>
#include <unistd.h>
#include <ros_imc_broker/SimpleController.hpp>
/**
 * This tutorial demonstrates simple receipt of messages over the ROS system.
 */
//void chatterCallback(const std_msgs::String::ConstPtr& msg)
//{
//  ROS_INFO("I heard: [%s]", msg->data.c_str());
//}

//void chatterCallback(const custom_msgs::NorthEastHeading::ConstPtr& msg)
//{
  //ROS_INFO("NORTH: %f | EAST: %f | HEADING. %f", msg->north, msg->east, msg->heading);
//}

class milliAmpereIMC: public ros_imc_broker::SimpleController
{
public:


  milliAmpereIMC(ros::NodeHandle& nh, const std::string& system_name):
    SimpleController(nh, system_name),
    state_(SM_SEND_ESTIMATE)
    
  {
    // Subscribers.
    //subscribe<ParamsController, IMC::EntityList>("IMC/In/EntityList", this);
    //subscribe<ParamsController, IMC::EntityActivationState>("IMC/In/EntityActivationState", this);
    //subscribe<ParamsController, IMC::EntityParameters>("IMC/In/EntityParameters", this);
    //subscribe<ParamsController, IMC::Temperature>("IMC/In/Temperature", this);
    

    // Publishers.
    send_estimated_state_pub_ = nh.advertise<IMC::EstimatedState>("IMC/Out/EstimatedState", 1000);
    //query_entity_list_pub_ = nh.advertise<IMC::EntityList>("IMC/Out/EntityList", 1000);
    //query_entity_params_pub_ = nh.advertise<IMC::QueryEntityParameters>("IMC/Out/QueryEntityParameters", 1000);

  }

  



  void
  updateStateMachine(void)
  {
    switch (state_)
    {
      case SM_SEND_ESTIMATE:
        ROS_INFO("Sending Estimate");
        IMC::EstimatedState est_st;
        est_st.lat = 0.7088;
        est_st.lon = -0.151000;
        est_st.height = 0;

        send_estimated_state_pub_.publish(est_st);
        state_ = SM_SEND_ESTIMATE;
        break;
      
    }
  }

private:
  
  enum State
  {
    SM_SEND_ESTIMATE,
    //! Query entity list.
    SM_ENTITIES_LIST_QUERY,
    //! Wait for entity list reply.
    SM_ENTITIES_LIST_WAIT,
    //! Query desired entity parameters.
    SM_ENTITY_PARAMS_QUERY,
    //! Wait for desired entity parameters reply.
    SM_ENTITY_PARAMS_WAIT,
    //! Compare loaded entity parameters with desired.
    SM_ENTITY_PARAMS_COMPARE,
    //! Send new parameters if they mismatch.
    SM_ENTITY_PARAMS_SEND,
    //! Activate desired entity.
    SM_ENTITY_ACTIVATE,
    //! Wait for entity activation reply.
    SM_ENTITY_ACTIVATE_WAIT,
    //! Entity is running.
    SM_RUNNING,
    //! Deactivate entity.
    SM_ENTITY_DEACTIVATE,
    //! Wait for entity deactivation reply.
    SM_ENTITY_DEACTIVATE_WAIT,
    //! Finished execution.
    SM_END
  };

  //! State machine state.
  State state_;

  ros::Publisher send_estimated_state_pub_;
  
};

int main(int argc, char **argv)
{
  /**
   * The ros::init() function needs to see argc and argv so that it can perform
   * any ROS arguments and name remapping that were provided at the command line.
   * For programmatic remappings you can use a different version of init() which takes
   * remappings directly, but for most command-line programs, passing argc and argv is
   * the easiest way to do it.  The third argument to init() is the name of the node.
   *
   * You must call one of the versions of ros::init() before using any other
   * part of the ROS system.
   */
  ros::init(argc, argv, "listener");

  
  ros::NodeHandle n;

  milliAmpereIMC sender(n, "eststatesender");

  ros::Rate loop_rate(1);

  while (ros::ok())
  {
  
    sender.updateStateMachine();
    loop_rate.sleep();
    
  }


  //ros::Subscriber sub = n.subscribe("navigation/eta", 1000, chatterCallback);

 
  //ros::spin();

  return 0;
}