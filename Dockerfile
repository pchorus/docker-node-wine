FROM node:10-slim

RUN dpkg --add-architecture i386

RUN apt-get update && apt-get install --assume-yes \
        wine \
        wine32 \
        libwine \
        libwine:i386 \
        fonts-wine \
        zip \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/sh"]
