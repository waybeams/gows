
# GOlang WorkSpace (GOWS)
This is the Waybeams Golang Workspace that is being shared to make it easier to get up and running with Waybeams contributions.

For the record, I'm not loving this unusual and messy configuration, but it's what's recommended here: https://golang.org/doc/code.html.

## Getting Started

### Set up Repositories
```bash
mkdir gows
cd gows
git clone https://github.com/waybeams/gows.git .
git submodule update --recursive
```

### Pull dependencies
```bash
source setup-env.sh
go get -u github.com/waybeams/assert/...
go get -u github.com/waybeams/waybeams/...
```

## Run Tests
```bash
make test
```

## Build and run TODO application
```bash
make run
```

