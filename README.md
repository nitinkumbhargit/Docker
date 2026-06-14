# Docker Release Notes

## Release Version

**Docker Engine:** 28.x
**Docker Compose Plugin:** 2.x

## Overview

This release provides a complete Docker Engine installation on Ubuntu, including:

* Docker Engine (Community Edition)
* Docker CLI
* Containerd Runtime
* Docker Buildx Plugin
* Docker Compose Plugin

The installation follows Docker's official repository method, ensuring access to the latest stable releases and security updates.

## Features

### Container Management

* Create, run, stop, and remove containers.
* Manage container lifecycle efficiently.
* Isolate applications and dependencies.

### Image Management

* Pull images from Docker Hub and private registries.
* Build custom images using Dockerfiles.
* Manage image versions and tags.

### Docker Compose

* Deploy multi-container applications using a single YAML file.
* Simplify development and testing environments.
* Manage services, networks, and volumes.

### Buildx Support

* Advanced image building capabilities.
* Multi-platform image builds.
* Enhanced caching and build performance.

### Security Improvements

* Official Docker GPG repository verification.
* Regular security updates from Docker.
* Secure container runtime using Containerd.

## Installation Components

| Component             | Purpose                       |
| --------------------- | ----------------------------- |
| docker-ce             | Docker Engine                 |
| docker-ce-cli         | Docker Command Line Interface |
| containerd.io         | Container Runtime             |
| docker-buildx-plugin  | Advanced Build Tool           |
| docker-compose-plugin | Multi-Container Management    |

## Verification

Verify the installation using:

```bash
docker --version
docker compose version
docker ps
docker run hello-world
```

Expected result:

```text
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

## Compatibility

| Ubuntu Version   | Supported |
| ---------------- | --------- |
| Ubuntu 20.04 LTS | Yes       |
| Ubuntu 22.04 LTS | Yes       |
| Ubuntu 24.04 LTS | Yes       |

## Known Requirements

* Internet connectivity during installation.
* User account with sudo privileges.
* Minimum 2 GB RAM recommended.
* 10 GB free disk space recommended.

## Upgrade Path

To upgrade Docker to the latest version:

```bash
sudo apt update
sudo apt upgrade docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
```

## References

Official Docker Documentation:
https://docs.docker.com/

Docker Hub:
https://hub.docker.com/
