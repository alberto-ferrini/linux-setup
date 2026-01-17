FROM ubuntu:noble
RUN echo /launch.sh >> /root/.bashrc && apt update && apt install curl -y
COPY --chmod=755 launch.sh /
WORKDIR /root
