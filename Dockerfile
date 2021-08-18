FROM alpine:edge
RUN apk update && \
    apk add --no-cache  ca-certificates curl unzip caddy wget tor
ENV XDG_CONFIG_HOME /etc/caddy/
ENV XDG_DATA_HOME /usr/share/caddy/
ENV HOME /usr/local/bin/
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
CMD /configure.sh
