.PHONY: setup
setup:
	go install golang.org/x/lint/golint@latest
	go install github.com/goreleaser/goreleaser@latest

.PHONY: test
test: setup
	go test -v ./...

.PHONY: lint
lint: setup
	go vet ./...
	golint -set_exit_status ./...
