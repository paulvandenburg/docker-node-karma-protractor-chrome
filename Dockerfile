FROM node:14-buster

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y --no-install-recommends \
    chromium \
    chromium-driver \
    libatk-bridge2.0-0 \
    libgconf-2-4 \
    libxss1 \
    openjdk-11-jre-headless \
    && rm -rf /var/lib/apt/lists/*

USER node

ENV CHROME_BIN /usr/bin/chromium
