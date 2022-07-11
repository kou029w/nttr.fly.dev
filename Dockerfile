FROM zedeus/nitter:latest
RUN apk --no-cache add gettext
COPY entrypoint.sh nitter.example.conf /
WORKDIR /src
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/sh", "-c", "./nitter"]
