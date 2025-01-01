FROM quay.io/dougrabson/freebsd14.1-base:latest

WORKDIR /app
COPY zig-out/bin/hello-freebsd .

CMD ["/app/hello-freebsd"]
