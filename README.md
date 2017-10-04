# Canadian Fire Warning Index calculator

A docker image for running the Canadian Fire Warning Index calculator using Python3. It can use any Docker base image that provides the following:

- Python 3
- Numpy

## Usage

* Create `docker-compose.yml`

** Set `RUNUSER_UID` to your linux uid value to avoid running container as root user

```
version: '2.2'
services:
  cafwi:
    build: ./
    cpus: 2
    mem_limit: 64m
    environment:
      - RUNUSER_UID=1000
    volumes:
      - ./:/home/runuser
    working_dir: /home/runuser
```

* Refer to https://github.com/Terranex/pyfwi/tree/master on how to create a CSV file containing a batch of test data

* `docker-compose run --rm cafwi FWI.py mydata.csv`

## Reference sample data

`/tmp/pyfwi-master/testBatch.csv`

