# Build file for Waybeams workspace

run: todo

todo:
	go run ./src/github.com/waybeams/waybeams/examples/todo/main.go

test:
	./bin/gotest-color test ./src/...

test-v:
	./bin/gotest-color test -v ./src/...

bench:
	go test ./src/... -bench=.
