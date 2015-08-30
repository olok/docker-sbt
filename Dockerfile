FROM olok/oracle-jdk

RUN mkdir /opt/sbt &&\
    wget --local-encoding=UTF-8 -O /opt/sbt/sbt.tar.gz https://dl.bintray.com/sbt/native-packages/sbt/0.13.9/sbt-0.13.9.tgz &&\
    tar xpfo /opt/sbt/sbt.tar.gz -C /opt/sbt --strip 1 &&\
    rm /opt/sbt/sbt.tar.gz

ENV PATH $PATH:/opt/sbt/bin
