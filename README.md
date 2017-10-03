# Canadian Fire Warning Index calculator

A docker image for running the Canadian Fire Warning Index calculator using Python3

## Usage

* Create `docker-compose.yml`

```
version: '2.2'
services:
  pyfwi:
    build: ./
    cpus: 2
    mem_limit: 64m
    environment:
      - RUNUSER_UID=1000
      #- SENTRY_DSN=
    volumes:
      - ./:/home/runuser
    working_dir: /home/runuser
```

* Refer to https://github.com/Terranex/pyfwi/tree/master

## Sample data for FWI.py

`/tmp/pyfwi-master/testBatch.csv`


