FROM ubuntu:noble
RUN apt update && apt install -y curl sudo
RUN usermod -aG sudo ubuntu
RUN echo "ubuntu ALL=(ALL:ALL) NOPASSWD: ALL" | tee /etc/sudoers.d/ubuntu
COPY --chmod=755 --chown=ubuntu:ubuntu linux-setup /home/ubuntu
USER ubuntu
RUN echo $HOME/linux-setup >> /home/ubuntu/.bashrc
WORKDIR /home/ubuntu
