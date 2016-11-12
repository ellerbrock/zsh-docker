FROM alpine

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

ENV CONTAINER_VERSION 0.0.1
ENV CONTAINER_NAME frapsoft/zsh
ENV CONTAINER_REPO https://github.com/ellerbrock/zsh-docker

RUN apk update && \
    apk add --no-cache zsh

ENV SHELL /bin/zsh

ENTRYPOINT ["zsh"]
CMD ["--version"]
