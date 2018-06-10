# Build file for Waybeams workspace

run: todo

dev-install:
	git submodule init
	git submodule sync
	git submodule update --recursive
	cd src/github.com/waybeams/assert && git pull origin master && git checkout master && cd -
	cd src/github.com/waybeams/waybeams && git pull origin master && git checkout master && cd -
	mkdir -p vendor/src
	go get -u github.com/waybeams/assert/...
	go get -u github.com/waybeams/waybeams/...
	make test

todo:
	go run ./src/github.com/waybeams/waybeams/examples/todo/main.go

build:
	go build -ldflags="-s -w" -o bin/todo ./src/github.com/waybeams/waybeams/examples/todo/main.go

test:
	./bin/gotest-color test ./src/...

test-v:
	./bin/gotest-color test -v ./src/...

bench:
	go test ./src/... -bench=.
