# MkDocs

This is a simple Docker container for running the [MkDocs](http://www.mkdocs.org) documentation site builder tool

### Usage

#### Build image

```
$ docker build -t metadrop/docker-mkdocs .
```

#### Then

See all available commands

```
$ docker run --rm metadrop/docker-mkdocs help
```

Check version

```
$ docker run --rm metadrop/docker-mkdocs version
```

Create a new project

```
$ docker run --rm -v ~/my/workspace:/workspace metadrop/docker-mkdocs new my-project
```

Webserver for development

```
$ docker run -d -p 8000:8000 -v ~/my/workspace/my-project:/workspace metadrop/docker-mkdocs
```

Build

```
$ docker run --rm -v ~/my/workspace/my-project:/workspace metadrop/docker-mkdocs build
```

Deploy

Upload the directory `~/my/workspace/my-project/site` to your _http server_


This repo it based on https://github.com/andrglo/docker-mkdocs.
