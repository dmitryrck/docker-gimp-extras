# Gimp

Gimp in a docker container with extra tools.

## Running

Run with `docker run`:

```shell
$ docker run --rm \
  -e DISPLAY=unix:0 \
  -e GDK_DPI_SCALE \
  -e GDK_SCALE \
  -v /etc/localtime:/etc/localtime:ro \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -u $(id -u) \
  -v ${HOME}:$(whoami) \
  dmitryrck/gimp-extras gimp
```

Run with [x11docker](https://github.com/mviereck/x11docker):

```shell
$ x11docker -c -m --pull=yes -- -v ${HOME}:/$(whoami) -- dmitryrck/gimp-extras gimp
```

## Application desktop file

You can create a `.desktop` file in your home folder.

Create this file `~/.local/share/applications/gimp.desktop` with this content:

```
[Desktop Entry]
Version=1.0
Type=Application
Name=GIMP (Docker)
GenericName=Image Editor
Comment=Create images and edit photographs
Keywords=GIMP;graphic;design;illustration;painting;
Exec=bash -c "x11docker -c -m --pull=yes -- -v ${HOME}:/$(whoami) -- dmitryrck/gimp-extras gimp"
TryExec=x11docker
Icon=gimp
Terminal=false
Categories=Graphics;2DGraphics;RasterGraphics;GTK;
StartupNotify=false
```
