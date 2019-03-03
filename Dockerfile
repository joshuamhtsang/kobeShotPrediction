FROM python:3.7-slim
RUN apt update && apt install -y \
    python3-dev \
    python3-pip \
    curl
ENV SPARK_VERSION 2.4.0
ENV SPARK_PACKAGE spark-${SPARK_VERSION}-bin-hadoop2.7
ENV SPARK_HOME /usr/spark-${SPARK_VERSION}
ENV PATH $PATH:${SPARK_HOME}/bin
RUN curl -sL --retry 3 \
    "https://www.apache.org/dyn/mirrors/mirrors.cgi?action=download&filename=spark/spark-${SPARK_VERSION}/${SPARK_PACKAGE}.tgz" \
    | gunzip \
    | tar x -C /usr/ \
    && mv /usr/$SPARK_PACKAGE $SPARK_HOME \
    && chown -R root:root $SPARK_HOME
