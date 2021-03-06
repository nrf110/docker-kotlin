FROM openjdk:11-jdk-buster

ARG KOTLIN_VERSION=1.4.31

RUN cd /usr/lib && \
  wget -O kotlin-compiler.zip "https://github.com/JetBrains/kotlin/releases/download/v${KOTLIN_VERSION}/kotlin-compiler-${KOTLIN_VERSION}.zip" && \
  unzip kotlin-compiler.zip && \
  rm -f kotlin-compiler.zip && \
  rm -f kotlinc/bin/*.bat

ENV PATH $PATH:/usr/lib/kotlinc/bin