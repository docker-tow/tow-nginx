Tow-nginx
=========

A sample tow project, shows how to use tow for configuration management incide docker containers.

Project contains a simple Dockerfile with nginx installation and bunch of files and templates to show how easier become working with dynamic configuration files.

## Build

To build simple docker image run

```
$ tow build -t tow-nginx
```
  
To build reconfigurable image add `--tow-run` parameter.

## Run

If you didn't use `--tow-run` then just execute:

```
$ docker run -d -p 8080:80 tow-nginx
$ curl localhost:8080
<h1>Tow-nginx demo webpage</h1>
```

If you used `--tow-run` you can just run image as in previous example, or redifene some input parameters:

```
$ tow run -d -p 8080:80 tow-nginx
$ curl localhost:8080
<h1>Tow-nginx updated demo webpage</h1>
```
