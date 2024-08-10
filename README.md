
## Description

[Presentation](https://docs.google.com/presentation/d/17UV_IBJW4yFiQOU1xM7Uwqb4hIDnA1JrIP_v_q7KkDA/edit?usp=sharing)

## Example

```
docker run -it \
        --privileged \
        --network="host" \
        --env="DISPLAY" \
        --env="QT_X11_NO_MITSHM=1" \
        --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    frankjoshua/ros2-nav2-demo
```

## Building

Use [build.sh](build.sh) to build the docker containers.

<br>Local builds are as follows:

```
./build.sh -t frankjoshua/ros2-nav2-demo -l
```

## License

Apache 2.0

## Author Information

Joshua Frank [@frankjoshua77](https://www.twitter.com/@frankjoshua77)
<br>
[http://roboticsascode.com](http://roboticsascode.com)
