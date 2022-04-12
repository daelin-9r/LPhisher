FROM debian:latest
LABEL MAINTAINER="https://github.com/rdxlr/lphisher"

WORKDIR /lphisher/
ADD . /lphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./lphisher.sh"]
