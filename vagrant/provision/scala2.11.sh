#!/usr/bin/env bash

wget www.scala-lang.org/files/archive/scala-2.11.7.deb
dpkg -i scala-2.11.7.deb

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
apt-get update
apt-get install sbt
