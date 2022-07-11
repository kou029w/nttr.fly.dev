FROM zedeus/nitter:latest@sha256:27c22898444cd35287ef861b7feeee0975da293cc880e3ac3908ad4bc7f19936
RUN apk --no-cache add gettext
COPY entrypoint.sh nitter.example.conf /
WORKDIR /src
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/sh", "-c", "./nitter"]
