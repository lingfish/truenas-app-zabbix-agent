FROM zabbix/zabbix-agent:alpine-latest

USER root

RUN apk add --no-cache python3 py3-pip git jq \
    && pip3 install --break-system-packages git+https://github.com/truenas/api_client.git

COPY conf/truenas.conf /etc/zabbix/zabbix_agentd.d

USER zabbix
