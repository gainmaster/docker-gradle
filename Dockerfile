FROM gainmaster/java:latest
MAINTAINER Tony Hesjevik <tony@hesjevik.no>

ADD https://services.gradle.org/distributions/gradle-2.3-bin.zip /usr/share/java/

WORKDIR /usr/share/java/

RUN \
  pacman-install unzip && \
  unzip gradle-2.3-bin.zip

ENV GRADLE_HOME=/usr/share/java/gradle-2.3
ENV PATH=$PATH:$GRADLE_HOME/bin
