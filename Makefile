BINARY_NAME=hello

build:
	GOARCH=amd64 GOOS=linux go build -o ${BINARY_NAME} ./main.go

clean:
	rm ./${BINARY_NAME} ./*-x86_64.pkg.tar.zst ./*.tar.gz
	rm -r ./pkg ./src

install: build
	mv ${BINARY_NAME} ${DESTDIR}/${BINARY_NAME}

release: build
	git tag -a v${VERSION} -m "Release v${VERSION}"
	git push origin v${VERSION}
