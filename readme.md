# docker-nano

A wee wrapper around piegsaj's [nano](https://github.com/JensPiegsa/nano/) image. In general, you don't want to be editing files in Docker containers because they're supposed to be ephemeral. But sometimes for trouble-shooting, this is a handy tool to help you hack quicker.

You can add this script directly to your `/usr/local/bin` (without cloning the repo) by doing:

```
TMPDIR=$(dirname $(mktemp -u)) && \
  curl -sLo "$TMPDIR/docker-nano.zip" "https://github.com/shankiesan/docker-nano/archive/master.zip" && \
  unzip -jq -o "$TMPDIR/docker-nano.zip" -d $TMPDIR && \
  cp "$TMPDIR/docker-nano.sh" /usr/local/bin/docker-nano
```

## Usage

Easy:

`docker-nano my-container /path/to/file`