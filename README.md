# s3r3nity.org-docker-stuff

## How To

### Nginx

```PowerShell
docker network create nginx
```

### Nextcloud

```Powershell
cd nextcloud
docker build -f Dockerfile -t rootthekid/nextcloud_imap:23.0.2 .
docker tag rootthekid/nextcloud_imap:23.0.2 rootthekid/nextcloud_imap:23
docker push rootthekid/nextcloud_imap:23.0.2
docker push rootthekid/nextcloud_imap:23
```

## Run Services

```PowerShell
docker-compose up
```
