FROM alpine:3.15.0
LABEL maintainer="Chris Kankiewicz <Chris@ChrisKankiewicz.com>"

# Speedtest Version
ARG SPEEDTEST_VERSION=1.1.0

# Set tarball file URL
ARG TARBALL_URL=https://install.speedtest.net/app/cli/ookla-speedtest-${SPEEDTEST_VERSION}-x86_64-linux.tgz
# Create Speedtest directories
RUN mkdir -pv /opt/speedtest

# Create non-root user
RUN adduser -DHs /sbin/nologin speedtest

# Create the config file
COPY files/speedtest-cli.json /home/speedtest/.config/ookla/speedtest-cli.json
RUN chown -R speedtest /home/speedtest/.config

# Install dependencies and speedtest and chown files
RUN apk add --update ca-certificates tar tzdata wget \
    && wget -qO- ${TARBALL_URL} | tar -xz -C /opt/speedtest \
    && apk del tar wget && rm -rf /var/cache/apk/* \
    && chown -R speedtest:speedtest /opt/speedtest

# Set the user
USER speedtest

# Set the working directory
WORKDIR /home/speedtest

# Set entrypoint
ENTRYPOINT ["/opt/speedtest/speedtest"]
