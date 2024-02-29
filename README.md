# Docker Shadowsocks
This repo is intended to create a docker image that can run Shadowsocks implementation from https://shadowsocks.org/

## Run as Shadowsocks Server.
sample docker-compose.yml located in ss_server folder. to make change sync down the the repo and update ss_server_cfg.json and re-run docker compose to make it work.

if needs to change listen port of the Shadowsocks server, both **docker-compose.yml and ss_server_cfg.json** need to be modified

TODO:
- Run as Shadowsocks Client
