#!/usr/bin/env bash

SPARK_DIR="spark-1.6.1"
DOWNLOAD_URL="http://apache-mirror.rbc.ru/pub/apache/spark/spark-1.6.1/${SPARK_DIR}.tgz"

wget -q $DOWNLOAD_URL
tar xzv "${SPARK_DIR}.tgz"
cd $SPARK_DIR
./make-distribution.sh
mv dist/ "../${SPARK_DIR}-dist"
chown -R vagrant:vagrant ../spark-1.6.1-dist/
cd ../
rm -f "${SPARK_DIR}.tgz"
rm -rf $SPARK_DIR
