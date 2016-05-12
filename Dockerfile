FROM alpine
ADD COPY fuse-tutorial-2016-03-25 .
RUN zcat fuse-tutorial.tgz | tar xvf -
WORKDIR fuse-tutorial-2016-03-25
RUN cd fuse-tutorial-2016-03-25 && ./configure && make && cp src/bbfs /usr/local/bin
ENTRYPOINT ["bbfs"]
