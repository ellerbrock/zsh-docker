FROM alpine

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

ENV CONTAINER_VERSION 0.0.2
ENV CONTAINER_NAME frapsoft/zsh
ENV CONTAINER_REPO https://github.com/ellerbrock/zsh-docker

RUN apk update && \
    apk add --no-cache zsh && \
    rm -f /tmp/* /etc/apk/cache/*

RUN sed -i -e "s/bin\/ash/bin\/zsh/" /etc/passwd

ENV SHELL /bin/zsh

CMD ["zsh", "--version"]
