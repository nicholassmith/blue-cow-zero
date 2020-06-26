FROM bitnami/minideb:jessie
MAINTAINER Nick Smith "nsmith@amplience.com"
RUN apt-get update -y
RUN apt-get install -y wbritish
ENTRYPOINT ["/bin/bash", "-c", "RESULT=$(for i in {1..3}; do shuf -n1  /usr/share/dict/words; done) && echo $RESULT | tr '\n' ' ' | sed -e 's/  *$//'"]
