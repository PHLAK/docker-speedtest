FROM alpine:3.22.1
LABEL maintainer="Chris Kankiewicz <Chris@ChrisKankiewicz.com>"

# Speedtest Version
ARG SPEEDTEST_VERSION=1.2.0

# Set tarball file URL
ARG TARBALL_URL=https://install.speedtest.net/app/cli/ookla-speedtest-${SPEEDTEST_VERSION}-linux-x86_64.tgz

# Create non-root user
RUN adduser -DHs /sbin/nologin speedtest

# Create the config file
COPY files/speedtest-cli.json /home/speedtest/.config/ookla/speedtest-cli.json
RUN chown -R speedtest /home/speedtest/.config

# Install dependencies and speedtest and chown files
RUN apk add --update ca-certificates tar tzdata wget \
    && wget -qO- ${TARBALL_URL} | tar -xz -C /usr/local/bin \
    && apk del tar wget && rm -rf /var/cache/apk/*

# Set the user
USER speedtest

# Set the working directory
WORKDIR /home/speedtest

# Set entrypoint
ENTRYPOINT ["/usr/local/bin/speedtest"]
