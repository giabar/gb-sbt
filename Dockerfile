FROM openjdk:8-jdk
RUN \
  apt-get update &&\
  apt-get upgrade -y &&\
  apt-get install -y apt-transport-https ca-certificates curl software-properties-common apt-utils &&\
  echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list &&\
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 &&\
  apt-get update &&\
  apt-get install -y --allow-unauthenticated sbt
ENTRYPOINT ["sbt"]
CMD ["sbtVersion"]
