# Stacken Web

This repository is built with the static site generator [Nikola](https://getnikola.com/),
based on the design [Jumbotron](http://getbootstrap.com/examples/jumbotron/).

## How it works

Nikola is a static site generator, with means that it reads the jinja template files from `themes/stacken` together with `pages` and `news` and generate a static page that is served from a simple web server. This is simple, secure and easy to maintain.

To build/use this on your computer we assume a few things like that you have virtualenv installed and the needed dependencies to build and setup a python 3 build environment.

### Build and Run the project

Type `make server` to run the site locally in a python environment. If you prefer to use Docker run `make server-docker` instead. For more information see the [Makefile](Makefile). In both cases browse to http://localhost:8000 to view the site.

## Deploy

A webhook will trigger a build for production over at [www.stacken.kth.se](https://www.stacken.kth.se). It should be live a short moment after the push.
