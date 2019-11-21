# Molecule

## How to start working on project

## Initialization

Build & prepare
```
$ git clone git@github.com:amberaries/Molecule.git
$ docker-compose build
$ docker-compose run --rm runner yarn install
$ docker-compose run --rm runner ./bin/setup
```

## Commands

```
$ docker-compose up rails
$ docker-compose up rails webpacker
```
Run everyday tasks via runner
```
$ docker-compose run --rm runner
$ docker-compose run --rm runner [<COMMAND>]
```
