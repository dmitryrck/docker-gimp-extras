# Gimp

Gimp in a docker container with extra tools.

Run:

```terminal
docker run --rm \
  -e DISPLAY=unix:0 \
  -e GDK_DPI_SCALE \
  -e GDK_SCALE \
  -v /etc/localtime:/etc/localtime:ro \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -u $(id -u) \
  -v ${HOME}:${HOME}
  dmitryrck/gimp-extras gimp
```
