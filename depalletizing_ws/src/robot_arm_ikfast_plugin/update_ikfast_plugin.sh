search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=robot.srdf
robot_name_in_srdf=robot
moveit_config_pkg=robot_moveit_config
robot_name=robot
planning_group_name=arm
ikfast_plugin_pkg=robot_arm_ikfast_plugin
base_link_name=robot_bottom
eef_link_name=tcp
ikfast_output_path=/home/andylee/ros1_ws/src/robot_arm_ikfast_plugin/src/robot_arm_ikfast_solver.cpp

rosrun moveit_kinematics create_ikfast_moveit_plugin.py\
  --search_mode=$search_mode\
  --srdf_filename=$srdf_filename\
  --robot_name_in_srdf=$robot_name_in_srdf\
  --moveit_config_pkg=$moveit_config_pkg\
  $robot_name\
  $planning_group_name\
  $ikfast_plugin_pkg\
  $base_link_name\
  $eef_link_name\
  $ikfast_output_path
