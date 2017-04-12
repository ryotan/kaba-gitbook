# Kaba GitBook build environment

[GitBook](https://www.gitbook.com/) + [PlantUML](http://plantuml.com/) build environment using [gitbook-plugin-uml](https://github.com/vowstar/gitbook-plugin-uml).

## Getting things up

### Run GitBook server

Run the command below in the document directory.

```bash
docker run --rm -v "$(pwd):/workspace" -it -p 4000:4000 ryotan/kaba-gitbook serve
```

### Build HTML

Run the command below in the document directory.

```bash
docker run --rm -v "$(pwd):/workspace" ryotan/kaba-gitbook "$1"
```

### Wrapper script

```bash
#! /bin/bash

case $1 in
    serve)
        docker run --rm -v "$(pwd):/workspace" -it -p 4000:4000 ryotan/kaba-gitbook "$1"
        ;;
    build)
        docker run --rm -v "$(pwd):/workspace" ryotan/kaba-gitbook "$1"
    ;;
esac
```

## License
Except as otherwise noted, these codes are licensed under [CC0](https://creativecommons.org/licenses/by/4.0/).
It is requested to read and accept [IPA Font License](IPA_Font_License_Agreement_v1.0.txt) before using IPAex Fonts in this repository.
