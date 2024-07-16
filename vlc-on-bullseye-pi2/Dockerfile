FROM balenalib/raspberry-pi2:bullseye

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
        vlc

RUN useradd -g video viewer
RUN usermod -aG audio viewer

WORKDIR /app

CMD ["bash"]
