FROM ubuntu:18.04
LABEL maintainer="Chris Kankiewicz <Chris@ChrisKankiewicz.com>"

# Create non-root user
RUN adduser --disabled-password --shell /sbin/nologin speedtest

# Create the config file
COPY files/speedtest-cli.json /home/speedtest/.config/ookla/speedtest-cli.json
RUN chown -R speedtest /home/speedtest/.config

# Install dependencies
RUN apt-get update && apt-get --assume-yes install apt-transport-https dirmngr \
    ca-certificates gnupg lsb-release tzdata && rm -rf /var/lib/apt/lists/*

# Add apt repository
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
RUN echo "deb https://ookla.bintray.com/debian $(lsb_release -sc) main" \
    | tee /etc/apt/sources.list.d/speedtest.list

# Install Speedtest
RUN apt-get update && apt-get --assume-yes install speedtest \
    && rm -rf /var/lib/apt/lists/*

# Set the user
USER speedtest

# Set the working directory
WORKDIR /home/speedtest

# Set entrypoint
ENTRYPOINT ["/usr/bin/speedtest"]
