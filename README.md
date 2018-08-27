### An phpunit example
A simple test demonstration using phpunit with PHP5.6.

### Required
Install [docker](https://docs.docker.com/install/) and [docker compose](https://docs.docker.com/compose/install/).

### Deploy
This application use docker composer file to setup a small php application.

#### Setup project
Inside the project root folder, type:
```shell
docker-compose up -d
```

#### To run tests
Use docker container to execute **phpunit** tests.

In the project root folder, type:
```shell
docker-compose run php phpunit tests/ --verbose --color
```
