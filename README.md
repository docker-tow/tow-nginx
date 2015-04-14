Tow-nginx
=========

A sample Tow project, shows how to use Tow for configuration management inside docker containers.

Project contains a simple Dockerfile with nginx installation and bunch of files and templates to show how easier become working with dynamic configuration files.

Checkout more information about Tow at [project homepage](https://github.com/alekseiko/tow).

## Build

To build simple docker image run

```console
$ tow build -t tow-nginx
```
  
To build reconfigurable image add `--tow-run` parameter.

## Run

If you didn't use `--tow-run` then just execute:

```console
$ docker run -d -p 8080:80 tow-nginx
$ curl localhost:8080
<!DOCTYPE html>
<html>
<head>
  <title>Tow Demo Webpage</title>
</head>

<body>
  <h1>Tow Demo Webpage</h1>
  <p>This text from the CONTENT variable</p>
</body>

</html>
```

If you used `--tow-run` you can run image as in previous example, or redifene env variable which will affect attributes:

```console
$ tow run -d -p 8080:80 tow-nginx
$ curl localhost:8080
<!DOCTYPE html>
<html>
<head>
  <title>Tow Demo Webpage</title>
</head>

<body>
  <h1>Tow Demo Webpage</h1>
  <p>Override default CONTENT</p>
</body>

</html>
```
