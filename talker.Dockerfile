FROM ros:jazzy

RUN apt-get update && \
    apt-get install -y ros-jazzy-demo-nodes-cpp && \
    rm -rf /var/lib/apt/lists/*

ENV ROS_DISCOVERY_SERVER=fastdds:11811

CMD ["ros2", "run", "demo_nodes_cpp", "talker"]
