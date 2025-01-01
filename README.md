# hello-freebsd

This is a test app to have a look at whats involved with using Zig + podman + FreeBSD + vultr hosting

## Zig App

Simple zig app that builds an exe for amd64-freebsd


## Container

Containerfile builds a FreeBSD based OCI compliant container that bundles the zig app.

Its possible to do a 2-stage build, having the builder stage do a `pkg install zig` and build it there ... but its slow and somewhat pointless.

Just build locally using make - this will compile the current app code into a freebsd executable, create a container for it, and push it up to the vultr container registry. Very fast

