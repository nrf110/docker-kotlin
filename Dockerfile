FROM azul/zulu-openjdk-debian:11-latest

ARG KOTLIN_VERSION=1.8.20

RUN cd /usr/lib && \
  apt-get update && \
  apt-get install -y wget && \
  wget -O kotlin-compiler.zip "https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_VERSION}/kotlin-compiler-${KOTLIN_VERSION}.zip" && \
  unzip kotlin-compiler.zip && \
  rm -f kotlin-compiler.zip && \
  rm -f kotlinc/bin/*.bat

ENV PATH $PATH:/usr/lib/kotlinc/bin
