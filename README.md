# Container for PySAL Workshops
[![](https://images.microbadger.com/badges/image/sjsrey/pysalworkshop.svg)](https://microbadger.com/images/sjsrey/pysalworkshop "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/sjsrey/pysalworkshop.svg)](https://microbadger.com/images/sjsrey/pysalworkshop "Get your own version badge on microbadger.com")

* [Serge Rey](http://sergerey.org)

This repository contains a `docker` container that is used for teaching workshops on spatial data science with PySAL.

## Requirements

You will need [Docker](https://www.docker.com) to be able to install the GDS environment.

## Installing

You can install this container by simply running:

> `docker pull sjsrey/pysalworkshop:v1`

[Note that you'll need [Docker](https://www.docker.com) installed on your machine]

## Building

If, instead, you want to build from source, the Docker image can be built by running:

> `docker build -t sjsrey/pysalworkshop:v1 .`

You can check it has been built correctly by:

> `docker image ls`

And you should see one image with the name `gds`.

## Running

The container can be run as:

```
> docker run --rm -ti -p 8888:8888 -v ${pwd}:/home/jovyan/host sjsrey/pysalworkshop:v1
```

<img src="JupyterLab.png" width="500">

A couple of notes on the command above:

* This opens the `8888` port of the container, so to access the Lab instance,
  you will have to point your browser to `localhost:8888` and insert the token
  printed on the terminal
* The command also mounts the current folder (`pwd`) to the container, but you can replace that with the path to any folder on your local machine (in fact, that will only work on host machines with the `pwd` command installed)

## Citing

[![DOI](https://zenodo.org/badge/220680044.svg)](https://zenodo.org/badge/latestdoi/220680044)

```bibtex
@software{pysalworkshop,
  author = {{Sergio J. Rey}},
  title = {\texttt{pysalworkshop}: A containter for PySAL Workshops},
  version = {1.0},
  date = {2019-09-08}
  }

```


