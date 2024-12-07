# ROS 2 FastDDS Docker Example

This uses a bridge network (automatically created by docker compose if nothing else is specified) and runs a FastDDS server and two nodes spread over three different docker containers.
This shows that they can talk to each other over this network.

This is just a PoC.

## Run the Example
You can just run `docker compose up` to launch the example and see the nodes talking to each other.

## ROS2 Introspection
You can run the `ros2` tools within one of the running nodes, e.g. `docker exec -it docker-compose-ros-fastdds-listener-1 bash`.

When you run `ros2` commands you will by default _not_ see the nodes & topics by default due to the usage of the discovery server - you need to have a super client. To do so you need to run the following commands:
```bash
export ROS_DISCOVERY_SERVER=fastdds:11811
export ROS_SUPER_CLIENT=true
ros2 daemon stop
ros2 daemon start
```

After this e.g. `ros2 topic list` will show you the `/chatter` topic.

License: CC-0 (do whatever you want).
