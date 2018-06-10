# Build file for Waybeams workspace

run: todo

dev-install:
	git submodule init
	git submodule sync
	git submodule update --recursive
	cd src/github.com/waybeams/assert && \
		git pull origin master
		git co master
	cd src/github.com/waybeams/waybeams && \
		git pull origin master && \
		git co master
	mkdir -p vendor/src
	go get -u github.com/waybeams/assert/...
	go get -u github.com/waybeams/waybeams/...
	make test

todo:
	go run ./src/github.com/waybeams/waybeams/examples/todo/main.go

test:
	./bin/gotest-color test ./src/...

test-v:
	./bin/gotest-color test -v ./src/...

bench:
	go test ./src/... -bench=.
