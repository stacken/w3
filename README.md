# Stacken Web

This repository is built with the static site generator [Nikola](https://getnikola.com/),
based on the design [Jumbotron](http://getbootstrap.com/examples/jumbotron/).

## How it works

Nikola is a static site generator, with means that it reads the jinja template files from `themes/stacken` together with `pages` and `news` and generate a static page that is served from a simple web server. This is simple, secure and easy to maintain.

### Build and Run the project

Nikola aparently does not always support the latest python version, so
running with docker (or podman) is recomended.

```
make server-docker DOCKER=podman
```

This will take some extra time the first time you run it, as it
fetches a python base image and installs dependencies.
When ready, you should be able to access the site (with your local
modifications) on <http://localhost:8000/>.

### Updating

To update nikola and its dependencies, use the `update-nikola` target.

To update python, edit the <Dockerfile> and change the python version
on the first (`FROM`) line.
Make sure to use a python version where Nikla actually works.

## Deploy

There is a github action that will build an OCI (docker) image for
each pushed commit.
If there is some problem (like a metadata error in a page) that stops
the site from building, the build will be marked as a failure and the
log is available on github.

It the commmit is on the master branch and the image is built
successfully, it will trigger a webhook that deploys the site in
production over at <https://www.stacken.kth.se/>.
It should be live a short moment after the push.
