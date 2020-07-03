docker-speedtest
================

<p align="center">
    <a href="https://spectrum.chat/phlaknet"><img src="https://img.shields.io/badge/Join_the-Community-7b16ff.svg?style=for-the-badge" alt="Join our Community"></a>
    <a href="https://github.com/users/PHLAK/sponsorship"><img src="https://img.shields.io/badge/Become_a-Sponsor-cc4195.svg?style=for-the-badge" alt="Become a Sponsor"></a>
    <a href="https://paypal.me/ChrisKankiewicz"><img src="https://img.shields.io/badge/Make_a-Donation-006bb6.svg?style=for-the-badge" alt="One-time Donation"></a>
    <br>
    <a href="https://hub.docker.com/repository/docker/phlak/speedtest/tags"><img alt="Docker Image Version" src="https://img.shields.io/docker/v/phlak/speedtest?style=flat-square&sort=semver"></a>
    <a href="https://hub.docker.com/repository/docker/phlak/speedtest"><img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/phlak/speedtest?style=flat-square"></a>
    <a href="https://github.com/PHLAK/docker-speedtest/blob/master/LICENSE"><img src="https://img.shields.io/github/license/PHLAK/docker-speedtest?style=flat-square" alt="License"></a>
    <a href="https://hub.docker.com/repository/docker/phlak/speedtest/builds"><img alt="Docker Build Status" src="https://img.shields.io/docker/build/phlak/speedtest?style=flat-square"></a>
</p>

<p align="center">
    Docker image for the <a href="https://www.speedtest.net/apps/cli">Speedtest CLI</a>.
</p>

---

Running the Container
---------------------

Run the container:

    docker run -it --rm --net host phlak/speedtest [OPTIONS]

> **NOTE:** You can run speedtest with options by passing them as the last
> arguments. Run `docker run -it --rm phlak/speedtest --help` for a list of
> available options and additional information.

#### Optional 'docker run' arguments

`-e TZ=America/Phoenix` - Set the timezone for your server. You can find your timezone in this
                          [list of timezones](https://goo.gl/uy1J6q). Use the (case sensitive)
                          value from the `TZ` column. If left unset, timezone will be UTC.

Troubleshooting
---------------

For general help and support join our [Slack Workspace](https://ln.phlak.net/join-slack).

Please report bugs to the [GitHub Issue Tracker](https://github.com/PHLAK/speedtest/issues).

Copyright
---------

This project is licensed under the [MIT License](https://github.com/PHLAK/speedtest/blob/master/LICENSE).
