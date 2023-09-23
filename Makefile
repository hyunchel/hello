BINARY_NAME=hello

build:
	GOARCH=amd64 GOOS=linux go build -o ${BINARY_NAME} ./main.go

clean:
	rm ${BINARY_NAME}

install: build
	mv ${BINARY_NAME} ${DESTDIR}/${BINARY_NAME}
