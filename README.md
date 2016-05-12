Dockerised version of Fuse tutorial

http://www.cs.nmsu.edu/~pfeiffer/fuse-tutorial/

Note I have removed the requirement to not run as root to make permissions easier.

This is mainly for testing whether Docker is ok running fuse, not for any real use cases.

docker run --cap-add SYS_ADMIN --security-opt seccomp=unconfined --device /dev/fuse:/dev/fuse -it justincormack/fuse-example /src /dest
