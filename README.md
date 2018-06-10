
# GOlang WorkSpace (GOWS)
This is the Waybeams Golang Workspace that is being shared to make it possible for multiple collaborators to work in the same build environment.

For the record, I'm not loving this unusual and messy, manual configuration, but it's essentially what is recommended here: https://golang.org/doc/code.html.

## Getting Started

### Set up Repositories
```bash
mkdir gows
cd gows
git clone https://github.com/waybeams/gows.git .
make dev-install
```

## Run Tests
```bash
make test
```

## Build and run TODO application
```bash
make run
```

## BUild the TODO application
```bash
make build
```

