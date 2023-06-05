### 编译镜像 

> docker build -t einsn/ros_humble:20230406 .

### 推送到官方HUB
> docker push einsn/ros_humble:20230406 

### 运行 

如果使用MobaXterm当作显示器，可以使用 

打开一个新的窗口，从以下信息中获取DISPLAY=192.168.2.132:0.0   
```sh
     │ ⮞ Your computer drives are accessible through the /drives path     │
     │ ⮞ Your DISPLAY is set to 192.168.2.132:0.0                         │
     │ ⮞ When using SSH, your remote DISPLAY is automatically forwarded   │
     │ ⮞ Each command status is specified by a special symbol (✓ or ✗)    │
     │                                                                    │
```

> docker run -it -v /home/einsn/work/ros2/workspace:/home/xxx --env="DISPLAY=192.168.2.132:0.0" --name=ros2_dev einsn/ros_humble:20230406 


### 演示


开启一个新终端执行
> docker exec -it ros2_dev bash

进入后，先执行

> source /opt/ros/humble/setup.bash


在这个终端执行 
> ros2 run turtlesim turtlesim_node 

如果正常执行，会显示一个窗口，上面有一个小乌龟

重新打开一个终端,执行
> ros2 run turtlesim turtle_teleop_key

在这个终端，按任意方向键，可操作小乌龟前进后退等。


