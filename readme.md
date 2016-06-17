# docker-nano

A wee wrapper around piegsaj's [nano](https://github.com/JensPiegsa/nano/) image.

You can add this script directly to your `/usr/local/bin` (without cloning the repo) by doing:

```
TMPDIR=$(dirname $(mktemp -u)) && \
  curl -sLo "$TMPDIR/docker-nano.zip" "https://github.com/proper-design/proper-build/archive/master.zip" && \
  unzip -jq -o "$TMPDIR/docker-nano.zip" -d $TMPDIR && \
  cp "$TMPDIR/docker-nano.sh" /usr/local/bin/docker-nano
```

## Usage

Easy:

`docker-nano my-container /path/to/file`