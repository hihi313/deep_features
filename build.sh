# go to your catkin workspace (the parent folder of src)
cd /app
# configure to build for Python3 - Please change the path in the following command according to your Python version
catkin config -DPYTHON_EXECUTABLE=/usr/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.8 -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.8.so
/opt/ros/$ROS_DISTRO/setup.bash
# build with catkin from the python-catkin-tools package
catkin build

# Run
/opt/intel/openvino_2021/bin/setupvars.sh
chmod 777 /app/devel/setup.bash
/app/devel/setup.bash
# rosrun feature_extraction feature_extraction_node.py _topics:=/cam0/image_raw _net:=hfnet_vino _model_path:=/datasets/TUM-VI/dataset-corridor1_512_16.bag