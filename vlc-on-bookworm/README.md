# VLC Experiments

Adjust device config before proceeding. Make sure that you have the following in your
`/boot/firmware/config.txt` (for Debian 12 and newer) or `/boot/config.txt` (for
Debuan 11 and older):

```
dtoverlay=vc4-fkms-v3d
```

Initialize the container.

```bash
cd vlc-on-bookworm-${PLATFORM}/ # ${PLATFORM} can either be pi2, pi3, or pi4.
docker compose down && docker compose up -d --build
```

Copy videos inside the `videos` directory.

```bash
cp ${VIDEO_PATHS} videos/
```

Get inside the container.

```bash
docker compose exec viewer bash
```

Play the video.

```bash
sudo -u viewer cvlc videos --vout=mmal_vout --mmal-display=HDMI-1 ${VIDEO_FILE}
```


