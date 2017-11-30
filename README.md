# go-dep-docker

This repo is used for the automated build of [go-dep](https://hub.docker.com/r/codyoss/go-dep/).

I use this Dockerfile for my Drone CI builds. Image should have everything you need, including a stable dep version, to get, test, and build Go Alpine binaries. *Note* image assumes you will mount in your code with volumes to the proper area. Cheers!
