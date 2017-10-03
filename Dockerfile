FROM cheewai/py3-psycopg2
LABEL maintainer "Cheewai Lai <clai@csir.co.za?"

ARG BRANCH=master
ARG REPO=https://github.com/Terranex/pyfwi/archive/${BRANCH}.zip
#
# By default, setuptools installs pyFWI module to
# /usr/local/lib/python3.6/site-packages
# Force it to /usr/lib/python3.6/site-packages instead to avoid
# having to modify PYTHONPATH
#
RUN apk --update-cache add curl unzip \
 && curl -o /tmp/pyfwi.zip -fsSL ${REPO} \
 && cd /tmp \
 && unzip pyfwi.zip \
 && cd pyfwi-${BRANCH} \
 && python setup.py install --prefix=/usr \
 && rm -rf /var/cache/apk/*
