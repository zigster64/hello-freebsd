build:
	zig build -Doptimize=ReleaseSmall
	ls -ltra zig-out/bin
	doas podman build -t hello-freebsd:latest .
	doas podman tag hello-freebsd:latest sjc.vultrcr.com/steveo/hello-freebsd:latest
	doas podman push sjc.vultrcr.com/steveo/hello-freebsd:latest

clean:
	doas podman image prune -a --external -f 
	doas podman image rm -f localhost/hello-freebsd
	rm -rf .zig-cache zig-out
	doas podman image list

run:
	doas podman run sjc.vultrcr.com/steveo/hello-freebsd


