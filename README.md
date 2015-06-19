# Node.js + Bower + Grunt in Docker

This image is based on the offical [Node.js Docker image](https://registry.hub.docker.com/_/node/). It provides the minimum tools and environment for building web applications.

## Supported tags and respective `Dockerfile` links
* [`latest`](https://github.com/killercentury/docker-nodejs-bower-grunt/blob/master/Dockerfile)
* [`onbuild`](https://github.com/killercentury/docker-nodejs-bower-grunt/blob/master/onbuild/Dockerfile)
* [`onbuild-production`](https://github.com/killercentury/docker-nodejs-bower-grunt/blob/master/onbuild-production/Dockerfile)

(The onbuild-production image forces a production flag on bower install due to the current version hasn't accepted it via environment variable yet. However, there is no forced production flag on npm install, since most people use grunt which is installed as devDependencies.)

## Examples
Following commands are examples that show you how to develop your application inside a container environment or run it inside the same environment on CI. (Some arguments may not be required depending on your actual use case.)

```
docker run -it --rm -v "$(pwd)":/data killercentury/nodejs-bower-grunt npm install
```

```
docker run -it --rm -v "$(pwd)":/data -e CI=true killercentury/nodejs-bower-grunt bower install --allow-root --config.storage.packages="/data/.bower/cache"
```

```
docker run -it --rm -v "$(pwd)":/data killercentury/nodejs-bower-grunt grunt --no-color
```

```
docker run -it --rm -v "$(pwd)":/data killercentury/nodejs-bower-grunt node app.js
```

This Docker image will be updated automatically once there is new version of Node.js being pushed to the Docker Hub. However, it only contains the latest version for the time being.
