# s3r3nity.org-docker-stuff

## How To

### Traefik / Pangolin

```shell
docker network create my_external
```

## Run Services

```shell
docker-compose up
```

## Crontab

```cron
*/5 * * * * docker exec --user www-data nextcloud_app php cron.php
0 4 * * * cd /opt/s3r3nity.org-docker-stuff && ./mail-cert.sh
```
