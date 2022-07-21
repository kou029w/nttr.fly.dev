FROM zedeus/nitter:latest@sha256:1795fe99b0442fee5667c3c7212b75ab39bd8f4a14359e2d70aa8d63b854c2f2
RUN apk --no-cache add gettext
COPY entrypoint.sh nitter.example.conf /
WORKDIR /src
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/sh", "-c", "./nitter"]
