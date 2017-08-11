# dkdde/platformsh-cli

## Docker Data Volume Container platformsh-cli

This Docker image `dkdde/platformsh-cli` consists of

* tagged version (`.phar` file) of [platformsh-cli:](https://github.com/platformsh/platformsh-cli)

to be run as [Docker Data Volume Container](https://docs.docker.com/engine/tutorials/dockervolumes/). PHP is _not_ included.

### Installation/Setup

Download latest Docker image:

    $ docker pull dkdde/platformsh-cli:

or a specific version (tag):

    $ docker pull dkdde/platformsh-cli:v3.19.1

In this case `v3.19.1` references a Git tag in the platformsh-cli repository. See list of available tags at the [Docker Hub project page](https://hub.docker.com/r/dkdde/platformsh-cli/tags/). 

### Usage

Create data volume container, name it `platformsh-cli` and expose `/platformsh-cli`:

    $ docker create -v /platformsh-cli --name platformsh-cli dkdde/platformsh-cli:latest /bin/true

Mount and run platformsh-cli executable (PHP v7.0):

    $ docker run -it --volumes-from platformsh-cli php:7.0-cli /platformsh-cli/platform --help

Try another PHP version (e.g. v7.1):

    $ docker run -it --volumes-from platformsh-cli php:7.1-cli /platformsh-cli/platform --help

### Development

[Clone project](https://github.com/dkd/docker-dkdde-platformsh-cli). Add and rename platform.phar into the project directory:

    $ git clone https://github.com/dkd/docker-dkdde-platformsh-cli.git
    $ cd docker-dkdde-platformsh-cli
    $ mv platform.phar platform

Build image, tag appropriately and push to Docker Hub:

    $ docker build . --tag dkdde/platformsh-cli
    $ docker push 
    $ docker push dkdde/platformsh-cli
