FROM gitpod/workspace-full:latest

USER root

# Install Docker (if missing) + Kali Linux
RUN apt-get update && apt-get install -y docker.io && \
    docker pull kalilinux/kali-rolling && \
    docker run -d --name kali-instance kalilinux/kali-rolling tail -f /dev/null

USER gitpod
