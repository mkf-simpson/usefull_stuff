#!/usr/bin/env bash

if ! type "java" > /dev/null 2>&1; then
  echo "Installing Java 8"

  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get -y update
  sudo apt-get -y install oracle-java8-installer
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
  sudo apt-get -y install oracle-java8-set-default

  java -version
else
  echo "Java is already installed"
fi
