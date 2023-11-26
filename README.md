
# GTA Connected Server Dockerization

This repository contains Dockerfiles to run the GTA Connected server on multiple platforms including Linux (x86_64, ARM64) and Windows (32-bit, 64-bit).

## Structure

- `linux/`: Dockerfiles for Linux builds.
- `windows/`: Dockerfiles for Windows builds.

## Building the Images

### Linux

```bash
docker build -t gtaconnected-linux -f linux/Dockerfile.x86_64 .
# and/or
docker build -t gtaconnected-linux-arm64 -f linux/Dockerfile.arm64 .
```

## Running the Containers

```bash
docker run -d -p 22000:22000 gtaconnected-linux
# and/or
docker run -d -p 22000:22000 gtaconnected-linux-arm64
```
