# TrueNAS App: Zabbix Agent

A Dockerized Zabbix Agent application for TrueNAS environments. This project provides a simple way to deploy and manage
a Zabbix Agent using Docker and Docker Compose.

The goal is to eventually turn this into a TrueNAS App, allowing for easy installation and management through the
TrueNAS interface.

## Features

- Easy deployment with Docker Compose on TrueNAS via a custom app
- Customisable configuration
- Uses the official Zabbix Agent image
- Bundles the TrueNAS API and `midclt` command to poll TrueNAS systems

## Prerequisites

- [TrueNAS](https://www.truenas.com/) installed -- **minimum tested version is 25.04**
- Some Zabbix items (eventually a template)

## Getting started

1. Login to your TrueNAS system via the web interface.
2. Click Apps -> Discover Apps -> Hamburger menu -> Install via YAML
3. Paste the contents of `docker-compose.yaml` into the text area.
4. Edit the environment variables as needed.

## Configuration

The actual polling of the TrueNAS system is done via the `midclt` command using Zabbix UserParameters.
The config file needs to be mounted via a volume, to `/etc/zabbix/zabbix_agentd.d` inside the container.

## Contributing

Pull requests are welcome.

## Contact

For questions or support, please open an issue on GitHub.

