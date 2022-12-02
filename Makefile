all: build

build:
	swift build

rebuild:
	swift package clean
	swift build

run: build
	swift run --skip-build --skip-update	

test:
	swift test --parallel 

list tests:
	swift test -l

fmt:
	swiftformat Package.swift Sources/ Tests/ --config .swiftformat.conf
