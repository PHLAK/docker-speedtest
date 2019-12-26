docker-speedtest
================


<p align="center">
  <a href="http://microbadger.com/#/images/phlak/speedtest" alt="Microbadger"><img src="https://images.microbadger.com/badges/image/phlak/speedtest.svg"></a>
  <a href="https://ln.phlak.net/join-slack"><img src="https://img.shields.io/badge/Join_our-Slack-611f69.svg" alt="Join our"></a>
  <a href="https://github.com/users/PHLAK/sponsorship"><img src="https://img.shields.io/badge/Become_a-Sponsor-cc4195.svg" alt="Become a Sponsor"></a>
  <a href="https://patreon.com/PHLAK"><img src="https://img.shields.io/badge/Become_a-Patron-e7513b.svg" alt="Become a Patron"></a>
  <a href="https://paypal.me/ChrisKankiewicz"><img src="https://img.shields.io/badge/Make_a-Donation-006bb6.svg" alt="One-time Donation"></a>
</p>


<p align="center">
  Docker image for [Speedtest CLI](https://www.speedtest.net/apps/cli).
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
