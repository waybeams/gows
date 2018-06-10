
# GOlang WorkSpace (GOWS)
This is the Waybeams Golang Workspace that is being shared to make it possible for multiple collaborators to work in the same build environment.

For the record, I'm not loving this unusual and messy, manual configuration, but it's essentially what is recommended here: https://golang.org/doc/code.html.

## Getting Started

### Set up Repositories
```bash
mkdir gows
cd gows
git clone https://github.com/waybeams/gows.git .
git submodule init
git submodule sync
git submodule update --recursive
```

### Deal with Git submodule insanity
```bash
cd src/github.com/waybeams/assert
git pull origin master
git co master
cd -
```

### Deal with Git submodule insanity (again)
```bash
cd src/github.com/waybeams/waybeams
git pull origin master
git co master
cd -
```

### Pull Golang dependencies, without committing to any particular go dependency management as this is also quite insane at the moment.
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

