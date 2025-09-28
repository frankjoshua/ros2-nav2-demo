
## Description

[Presentation](https://docs.google.com/presentation/d/17UV_IBJW4yFiQOU1xM7Uwqb4hIDnA1JrIP_v_q7KkDA/edit?usp=sharing)

## Example

```
docker compose up
```

The compose stack now starts two services:
- `nav2-demo` (mirrors the previous `docker run` flags for the Nav2 simulator, including
  privileged mode, host namespaces, and X11 sharing so you can keep using steps like
  `xhost +local:`)
- `ros2-bridge-suite` (pulls `frankjoshua/ros2-bridge-suite` and shares the host
  network/pid/ipc namespaces for ROS 2 bridging tools)

## Building

Use [build.sh](build.sh) to build the docker containers.

<br>Local builds are as follows:

```
./build.sh -t frankjoshua/ros2-nav2-demo -l
```

To build the local compose image for the current platform you can also run:

```
docker compose build
```

## License

Apache 2.0

## Author Information

Joshua Frank [@frankjoshua77](https://www.twitter.com/@frankjoshua77)
<br>
[http://roboticsascode.com](http://roboticsascode.com)
