from piti118/java8

COPY cloudera.list /etc/apt/sources.list.d/cloudera.list
COPY gplextra.list /etc/apt/sources.list.d/gplextra.list
COPY cloudera.pref /etc/apt/preferences.d/cloudera.pref

#add archive key
COPY archive.key /tmp/archive.key
RUN apt-key add /tmp/archive.key

RUN apt-get update
