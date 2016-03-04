# FROM alpine:3.3
FROM jeanblanchard/alpine-glibc

RUN apk update && apk add curl bash ncurses libstdc++ --purge
RUN curl -skLO https://github.com/emojicode/emojicode/releases/download/v0.2-beta.2/Emojicode-0.2.0-beta.2-x86_64-linux-gnu.tar.gz
# RUN curl -skLO "https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk" && \
    # apk add --allow-untrusted glibc-2.21-r2.apk
RUN tar -xzf Emojicode-0.2.0-beta.2-x86_64-linux-gnu.tar.gz

RUN cd Emojicode-0.2.0-beta.2-x86_64-linux-gnu && TERM=vt100 ./install.sh



