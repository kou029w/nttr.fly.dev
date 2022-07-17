FROM zedeus/nitter:latest@sha256:bd93f7cd24a09b2885a3b47a80dea06a0bd8c77cf8f2c6627fb06a8c4381f831
RUN apk --no-cache add gettext
COPY entrypoint.sh nitter.example.conf /
WORKDIR /src
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/sh", "-c", "./nitter"]
