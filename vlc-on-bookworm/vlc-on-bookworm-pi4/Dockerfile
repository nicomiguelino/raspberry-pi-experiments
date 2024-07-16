FROM balenalib/raspberrypi3-debian:bookworm

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
        vlc \
        python3 \
        python3-pip

RUN useradd -g video viewer
RUN usermod -aG audio viewer

WORKDIR /app

CMD ["bash"]
