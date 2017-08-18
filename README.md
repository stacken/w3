# Stacken (maybe future web?)

This repository is built with the static site generator [Nikola](https://getnikola.com/),
based on the design [Jumbotron](http://getbootstrap.com/examples/jumbotron/).

## How it works

Nikola is a static site generator, with means that it reads the jinja template files from `themes/stacken` together with `pages` and `posts` and generate a static page that is served from a simple web server. This is simple, secure and easy to maintain.

To build/use this on your computer we assume a few things like that you have virtualenv installed and the needed dependencies to build and setup a python 3 build environment.

### Build the project

Just type `make`, this will output the result to `output/`

### Local server

A easy and nice way to test your page, just type `make server`, point your browser to [localhost:8080](http://localhost:8000).

## Deploy

To deploy the test site to GitHub Pages type `make deploy`.

## View

Try it out at [stacken.github.io/w3](https://stacken.github.io/w3/), help me make it awesome!
