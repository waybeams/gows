# Build file for Waybeams workspace

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

clean:
	rm -f bin/todo-desktop
	rm -f bin/todo.min.js
	rm -f bin/todo.min.js.map
	rm -f bin/todo.min.gz

run:
	go run ./src/github.com/waybeams/waybeams/examples/todo/cmd/todo-desktop/main.go

build:
	go build -ldflags="-s -w" -o bin/todo-desktop ./src/github.com/waybeams/waybeams/examples/todo/cmd/todo-desktop/main.go

serve:
	gopherjs serve github.com/waybeams/waybeams/examples/todo/cmd/todo-browser/main.go

run-js:
	gopherjs run ./src/github.com/waybeams/waybeams/examples/todo/cmd/todo-browser/main.go

build-js:
	gopherjs build -m -o bin/todo.min.js ./src/github.com/waybeams/waybeams/examples/todo/cmd/todo-browser/main.go
	rm -f bin/todo.min.gz
	gzip -c -8 bin/todo.min.js > bin/todo.min.gz
	ls -la bin/

test:
	./bin/gotest-color test ./src/...

test-v:
	./bin/gotest-color test -v ./src/...

bench:
	go test ./src/... -bench=.
