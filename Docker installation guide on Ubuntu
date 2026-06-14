# Docker Installation Guide on Ubuntu

## Overview

This guide explains how to install Docker Engine on Ubuntu using the official Docker repository.

---

## Prerequisites

* Ubuntu 20.04, 22.04, or later
* User account with `sudo` privileges
* Internet connectivity

---

## Step 1: Update the System

```bash
sudo apt update
sudo apt upgrade -y
```

---

## Step 2: Install Required Packages

```bash
sudo apt install -y ca-certificates curl gnupg lsb-release
```

---

## Step 3: Add Docker's Official GPG Key

```bash
sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg
```

---

## Step 4: Add Docker Repository

```bash
echo \
  "deb [arch=$(dpkg --print-architecture) \
  signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

Update package information:

```bash
sudo apt update
```

---

## Step 5: Install Docker Engine

```bash
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

---

## Step 6: Verify Docker Installation

Check Docker version:

```bash
docker --version
```

Example output:

```text
Docker version 28.x.x, build xxxxxxx
```

Check Docker service status:

```bash
sudo systemctl status docker
```

Expected output:

```text
Active: active (running)
```

---

## Step 7: Run a Test Container

```bash
sudo docker run hello-world
```

Expected output:

```text
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

---

## Step 8: Allow Non-Root User Access (Optional)

Add your user to the Docker group:

```bash
sudo usermod -aG docker $USER
```

Apply the new group membership:

```bash
newgrp docker
```

Verify:

```bash
docker run hello-world
```

You should be able to run Docker commands without `sudo`.

---

## Step 9: Enable Docker at Boot

```bash
sudo systemctl enable docker
```

Verify:

```bash
sudo systemctl is-enabled docker
```

Expected output:

```text
enabled
```

---

## Useful Docker Commands

### Check Running Containers

```bash
docker ps
```

### Check All Containers

```bash
docker ps -a
```

### List Images

```bash
docker images
```

### Pull an Image

```bash
docker pull nginx
```

### Run Nginx Container

```bash
docker run -d -p 80:80 --name nginx nginx
```

### View Container Logs

```bash
docker logs nginx
```

### Stop a Container

```bash
docker stop nginx
```

### Remove a Container

```bash
docker rm nginx
```

### Remove an Image

```bash
docker rmi nginx
```

---

## Troubleshooting

### Docker Service Not Running

```bash
sudo systemctl start docker
sudo systemctl enable docker
```

### Permission Denied While Running Docker

```bash
sudo usermod -aG docker $USER
newgrp docker
```

Log out and log back in if required.

### Verify Docker Daemon

```bash
sudo systemctl status docker
```

---

## Verify Installation Summary

```bash
docker --version
docker compose version
docker ps
docker run hello-world
```

If all commands execute successfully, Docker has been installed correctly.

---

## References

Official Docker Documentation:

https://docs.docker.com/engine/install/ubuntu/
