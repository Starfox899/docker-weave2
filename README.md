# docker-weave2

A docker image to run Weave2 from iweave.com

# Build yourself

## Checkout git repository
```
git clone https://github.com/Starfox899/docker-weave2.git
```

## Build image
```
docker build -t iweave .
```

## Run mysql and built image

```
docker run --rm --name mysql_iweave -d -e MYSQL_ROOT_PASSWORD=myFancyPassword mysql
docker run --rm -it -p 8080:8080 --link mysql_iweave:mysql iweave
```

# Run from dockerhub

``` 
docker run --rm --name mysql_iweave -d -e MYSQL_ROOT_PASSWORD=myFancyPassword mysql
docker run --rm -it -p 8080:8080 --link mysql_iweave:mysql starfox/iweave
```

# First steps

1. Goto http://localhost:8080/AdminConsole.html
2. Login with user *iweave* and password *iweave*
3. Start working with weave according to the weave tutorial http://iweave.wpengine.com/documentation/
