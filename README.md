# TrueNAS App: Zabbix Agent

A Dockerised Zabbix agent application for TrueNAS environments. This project provides a simple way to deploy and manage
a Zabbix Agent using Docker and Docker Compose.

Due to security concerns from the TrueNAS team, this app is not available in the official TrueNAS app catalog.
[Sorry, I tried!](https://github.com/truenas/apps/pull/2685)

## Features

- Easy deployment with Docker Compose on TrueNAS via a custom app
- Uses the official Zabbix Agent image
- Bundles the TrueNAS API and `midclt` command to poll TrueNAS systems

## Missing stuff/TODO in Zabbix template
- [X] Add discovery rules for TrueNAS pools
- [X] Add discovery rules for TrueNAS datasets
- [ ] Add discovery rules for other TrueNAS stuff
- [ ] Add graphs, triggers, etc.

## Prerequisites

- [TrueNAS](https://www.truenas.com/) installed -- **minimum tested version is 25.04**
- Installation of the Zabbix template

## Getting started

1. Login to your TrueNAS system via the web interface.
2. Click Apps -> Discover Apps -> Hamburger menu -> Install via YAML
3. Paste the contents of `docker-compose.yaml` into the text area.
4. Edit the environment variables as needed.

## Configuration

The actual polling of the TrueNAS system is done via the `midclt` command using Zabbix `UserParameters`.
The config file is a simple one-liner, using the power of passing arguments to the `midclt` command via Zabbix
item parameters.

Import the Zabbix template `truenas_agent_template.yaml` into your Zabbix server to get the necessary items.

There is currently only discovery and items in the template.  **Pull requests are welcome and desired to add more things
to the template, such as triggers, graphs, etc.**

## Contact

For questions or support, please open an issue on this repo.  Though there is a thread on the TrueNAS forums, I'd prefer
to keep the discussion here on GitHub.

